<?php

namespace AppBundle\Controller;

use eZ\Publish\API\Repository\Repository;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use Symfony\Component\HttpFoundation\Request;
use Netgen\Bundle\EzFormsBundle\Form\DataWrapper;
use Symfony\Component\DependencyInjection\ContainerInterface as Container;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Publish\Core\Repository\Values\Content\Location;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Mail\Notification;
use Exception;

class EventController extends Controller {

    private $repository;
    protected $container;
    protected $notification;

    public function __construct(Repository $repository, Container $container, Notification $notification) {
        $this->repository = $repository;
        $this->container = $container;
        $this->notification = $notification;
    }

    function viewLocationAction(Request $request, ContentView $view, Location $location) {

        $searchService = $this->repository->getSearchService();
        $locationService = $this->repository->getLocationService();
        $contentService = $this->repository->getContentService();
        $contentTypeService = $this->repository->getContentTypeService();
        $userService = $this->repository->getUserService();
        $alreadyApplied = FALSE;
        $notLoggedIn = FALSE;
        $loggedinUser = FALSE;

        $contentType = $contentTypeService->loadContentTypeByIdentifier('attendee');
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'ger-DE');
        $data = new DataWrapper($contentCreateStruct, $contentCreateStruct->contentType);
        $formBuilder = $this->container->get('form.factory')->createBuilder('ezforms_create_content', $data);
        $formBuilder->add('birthday','birthday', [
                          'widget' => 'single_text',
                          'format' => 'dd.MM.yyyy',
                            'attr' => [
                                'class' => 'datepicker',
                                'data-provide' => 'datepicker',
                                'data-date-format' => 'dd.mm.yyyy'
                                ]
                        ]);
        $childrenLocations = $locationService->loadLocationChildren($location);
        if ($this->getUser()) {
            $loggedinUser = $this->getUser()->getAPIUser();
            foreach ($childrenLocations->locations as $child) {
                if ($child->contentInfo->ownerId == $loggedinUser->id) {
                    $alreadyApplied = $child->contentInfo->publishedDate;
                }
            }
        } else {
            $notLoggedIn = TRUE;
        }

        $form = $formBuilder->getForm();
        $form->handleRequest($request);
        if ($this->get('request')->isMethod('POST')) {
            if ($form->isValid() && !$alreadyApplied) {
                $rootLocation = $locationService->loadLocation($location->id);
                $info = array();
                $info['first_name'] = $form->getData()->payload->fields[0]->value->text;
                $info['last_name'] = $form->getData()->payload->fields[1]->value->text;
                $info['text'] = "has applied for the research trip " . $rootLocation->contentInfo->name;
                try {
                    $this->repository->beginTransaction();
                    $contentDraft = $contentService->createContent(
                            $data->payload, array(
                        $locationService->newLocationCreateStruct($rootLocation->id),
                            )
                    );
                    $content = $contentService->publishVersion($contentDraft->versionInfo);
                    $this->repository->commit();
                    $this->notification->send($info);
                } catch (Exception $e) {
                    $this->repository->rollback();
                    throw $e;
                }
                return new Response('<div class="alert alert-success">Das Formular ist erfolgreich versendet worden!</div>');
            } else {
                return new Response('<div class="alert alert-danger">Beim Speichern Ihrer Formular ist ein Fehler aufgetreten oder Sie sind schon Angemeldet.</div>');
            }
        }
        $view->addParameters(['form' => $form->createView(), 'alreadyApplied' => $alreadyApplied, 'notLoggedIn' => $notLoggedIn,'user' => $loggedinUser]);
        return $view;
    }

}
