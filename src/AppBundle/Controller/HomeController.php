<?php

namespace AppBundle\Controller;

use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;

class HomeController extends Controller {

    private $repository;

    public function __construct(Repository $repository) {
        $this->repository = $repository;
    }

    public function indexAction(ContentView $view, \eZ\Publish\API\Repository\Values\Content\Location $location) {

        $searchService = $this->repository->getSearchService();
        $locationService = $this->repository->getLocationService();

        $query = new Query(
                array(
            'filter' => new Criterion\LogicalAnd(
                    array(
                new Criterion\ParentLocationId($location->id),
                new Criterion\Visibility(Criterion\Visibility::VISIBLE),
                        new Criterion\ContentTypeIdentifier('folder')
                    )
            )
                )
        );
        $query->sortClauses = [
            new Query\SortClause\DatePublished(Query::SORT_DESC)
        ];
        
        $query->limit=10;

        $results = $searchService->findContentInfo($query);

        $contents = [];
        $locations = [];
        foreach ($results->searchHits as $result) {
            $contents[] = $result->valueObject;
            $locations[] = $locationService->loadLocations($result->valueObject)[0];
        }

        $view->addParameters(["items" => $contents, "nodes" => $locations]);
        return $view;
    }

}
