<?php

namespace AppBundle\Controller;

use eZ\Publish\API\Repository\Repository;
use eZ\Publish\Core\Repository\Values\Content\Location;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use Pagerfanta\Pagerfanta;
use eZ\Publish\Core\MVC\Symfony\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class BlogController extends Controller {

    private $repository;

    public function __construct(Repository $repository) {
        $this->repository = $repository;
    }

    public function showBlogPostsAction(ContentView $view, Location $location, Request $request) {
        $searchService = $this->repository->getSearchService();
        $locationService = $this->repository->getLocationService();

        $query = new Query(
        array(
            'filter' => new Criterion\LogicalAnd(
              array(
                new Criterion\ParentLocationId($location->id),
                new Criterion\Visibility(Criterion\Visibility::VISIBLE),
                new Criterion\ContentTypeIdentifier(array('blog_post','event'))
                    ))
                )
        );
        $query->sortClauses = [
            new Query\SortClause\DatePublished(Query::SORT_DESC)
        ];
        $pager = new Pagerfanta(new ContentSearchAdapter($query, $searchService));
        $pager->setMaxPerPage(10);
        $pager->setCurrentPage($request->get('page', 1));
        $view->addParameters(['pagerBlogs' => $pager, 'location' => $location]);
        return $view;
    }

}
