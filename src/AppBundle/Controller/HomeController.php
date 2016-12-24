<?php

namespace AppBundle\Controller;

use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Location;

class HomeController extends Controller {

    private $repository;

    public function __construct(Repository $repository) {
        $this->repository = $repository;
    }

    public function indexAction(ContentView $view, Location $location) {

        $searchService = $this->repository->getSearchService();
        $locationService = $this->repository->getLocationService();

        $query = new Query(
                array(
            'filter' => new Criterion\LogicalAnd(
                    array(
                new Criterion\Visibility(Criterion\Visibility::VISIBLE),
                new Criterion\ContentTypeIdentifier(array('blog_post'))
                    )
            )
                )
        );
        $query->sortClauses = [
            new Query\SortClause\DatePublished(Query::SORT_DESC)
        ];
        
        $query->limit=2;

        $results = $searchService->findContent($query);

        $contents = [];
        $locations = [];
        foreach ($results->searchHits as $result) {
            $contents[] = $result->valueObject;
        }

        $view->addParameters(["items" => $contents ]);
        return $view;
    }

}
