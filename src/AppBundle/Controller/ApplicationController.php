<?php

namespace AppBundle\Controller;

use eZ\Publish\API\Repository\Values\Content\Content;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Location;
use Symfony\Component\HttpFoundation\Response;

class ApplicationController extends Controller {

    private $repository;

    public function __construct(Repository $repository) {
        $this->repository = $repository;
    }
    public function viewLocationAction() {
        
        $searchService = $this->repository->getSearchService();
        $locationService = $this->repository->getLocationService();
        $contentService = $this->repository->getContentService();
        $contentTypeService = $this->repository->getContentTypeService();
        
        $query = new Query(
            array(
                'filter' => new Criterion\LogicalAnd(
                    array(
                        new Criterion\ParentLocationId(54),
                        new Criterion\Visibility(Criterion\Visibility::VISIBLE),
                        new Criterion\ContentTypeIdentifier('application')
                    )
                )
            )
        );
       $contentinfos = $searchService->findContentInfo($query);
       $locations = [];
        foreach ($contentinfos->searchHits as $result) {
            $locations[] = $locationService->loadLocations($result->valueObject)[0];
        }
        print_r(count($locations));
        if(!$locations){
            $contentType = $contentTypeService->loadContentTypeByIdentifier( 'application' );
            $contentCreateStruct = $contentService->newContentCreateStruct( $contentType , 'ger-DE');
            $contentCreateStruct->setField( 'name', 'My title' );
            $locationCreateStruct = $locationService->newLocationCreateStruct( 54 );

            $draft = $contentService->createContent( $contentCreateStruct, array( $locationCreateStruct ) );
            $content = $contentService->publishVersion( $draft->versionInfo );   
            return new Response($content->id);
        }
        return new Response($locations[0]->id);
    }

}