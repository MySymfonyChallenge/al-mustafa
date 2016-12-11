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
use RuntimeException;
use Exception;

class EventController extends Controller {

    private $repository;
    protected $container;

    public function __construct(Repository $repository, Container $container) {
        $this->repository = $repository;
        $this->container = $container;
    }

    function viewLocationAction(Request $request,ContentView $view,Location $location) {
        
        $searchService = $this->repository->getSearchService();
        $locationService = $this->repository->getLocationService();
        $contentService = $this->repository->getContentService();
        $contentTypeService = $this->repository->getContentTypeService();

        $contentType = $contentTypeService->loadContentTypeByIdentifier('attendee');
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'ger-DE');
        $data = new DataWrapper($contentCreateStruct, $contentCreateStruct->contentType);
        $formBuilder = $this->container->get('form.factory')->createBuilder('ezforms_create_content', $data);

        $form = $formBuilder->getForm();
        $form->handleRequest($request);
        if($this->get( 'request')->isMethod('POST')){
                 if ($form->isValid()) {
            $rootLocation = $locationService->loadLocation($location->id);

            try {
                $this->repository->beginTransaction();

                $contentDraft = $contentService->createContent(
                        $data->payload, array(
                    $locationService->newLocationCreateStruct($rootLocation->id),
                        )
                );

                $content = $contentService->publishVersion($contentDraft->versionInfo);

                $this->repository->commit();
            } catch (Exception $e) {
                $this->repository->rollback();
                // @todo do something else if needed
                throw $e;
            }
                return new Response( '<div class="alert alert-success">Das Formular ist erfolgreich versendet worden!</div>' );
        } 
         else {
                return new Response( '<div class="alert alert-danger">Beim Speichern Ihrer Formular ist ein Fehler aufgetreten.<br />Bitte versuchen Sie es noch einmal.</div>' );
        }
        } 


        /*
          $contentType = $contentTypeService->loadContentTypeByIdentifier( 'application' );
          $contentCreateStruct = $contentService->newContentCreateStruct( $contentType , 'ger-DE');
          $contentCreateStruct->setField( 'name', 'My title' );
          $locationCreateStruct = $locationService->newLocationCreateStruct( 54 );

          $draft = $contentService->createContent( $contentCreateStruct, array( $locationCreateStruct ) );
          $content = $contentService->publishVersion( $draft->versionInfo );
         */
        $view->addParameters(['form' => $form->createView()]);
        return $view;
    }

}