<?php

namespace AppBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Repository;
use Symfony\Component\HttpFoundation\Response;
use Netgen\Bundle\EzFormsBundle\Form\DataWrapper;
use Symfony\Component\DependencyInjection\ContainerInterface as Container;
use AppBundle\Mail\Notification;
use Symfony\Component\HttpFoundation\Request;

class ApplicationController extends Controller {

    private $repository;
    protected $container;
    protected $notification;
    protected $application_location_id;

    public function __construct(Repository $repository, Container $container, Notification $notification, $application_location_id) {
        $this->repository = $repository;
        $this->container = $container;
        $this->notification = $notification;
        $this->application_location_id = $application_location_id;
    }

    public function viewLocationAction(Request $request) {

        $locationService = $this->repository->getLocationService();
        $contentService = $this->repository->getContentService();
        $contentTypeService = $this->repository->getContentTypeService();
        $alreadyApplied = FALSE;
        $notLoggedIn = FALSE;
        $loggedinUser = FALSE;

        $contentType = $contentTypeService->loadContentTypeByIdentifier('application');
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
        $location = $locationService->loadLocation($this->application_location_id);
        $childrenLocations = $locationService->loadLocationChildren($location);

        if ($this->getUser()) {
            $loggedinUser = $this->getUser()->getAPIUser();
            $loggedinUserID = $loggedinUser->id;
            foreach ($childrenLocations->locations as $child) {
                if ($child->contentInfo->ownerId == $loggedinUserID) {
                    $alreadyApplied = $child->contentInfo->publishedDate;
                }
            }
        } else {
            $notLoggedIn = TRUE;
        }

        $form = $formBuilder->getForm();
        $form->handleRequest($request);

        if ($this->get('request')->isMethod('POST')) {
            if ($form->isValid() && !$alreadyApplied && $this->addAnApplication($form, $location, $data)) {
                return new Response('<div class="alert alert-success">Das Formular ist erfolgreich versendet worden!</div>');
            } else {
                return new Response('<div class="alert alert-danger">Beim Speichern Ihres Formulars ist ein Fehler aufgetreten oder Sie haben sich schon beworben.</div>');
            }
        }
        return $this->render("AppBundle:full:application.html.twig", ['form' => $form->createView(), 'alreadyApplied' => $alreadyApplied, 'notLoggedIn' => $notLoggedIn,'user' => $loggedinUser], new Response());
    }

    public function addAnApplication($form, $rootLocation, $data) {
        $locationService = $this->repository->getLocationService();
        $contentService = $this->repository->getContentService();
        $info = array();
        $info['first_name'] = $form->getData()->payload->fields[0]->value->text;
        $info['last_name'] = $form->getData()->payload->fields[1]->value->text;
        $info['text'] = "has applied to study.";
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
        return new Response($content->id);
    }
}