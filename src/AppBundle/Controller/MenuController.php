<?php

namespace AppBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\QueryType\ChildrenQueryType;

class MenuController extends Controller {

    public function menuAction() {

        $searchService = $this->getRepository()->getSearchService();
        $childrenQueryType = new ChildrenQueryType;
        $location_id = $this->getConfigResolver()->getParameter('content.tree_root.location_id');
        $arrMenu = [];

        $query = $childrenQueryType->getQuery([
            'parent_location_id' => $location_id,
            'show_menu' => TRUE
        ]);
        $searchResults = $searchService->findLocations($query);
        
        foreach ($searchResults->searchHits as $result) {
            $query = $childrenQueryType->getQuery([
                'parent_location_id' => $result->valueObject->id,
                'show_menu' => TRUE
            ]);
            $subfolders = $searchService->findLocations($query);
            if ($subfolders->searchHits){
                foreach ($subfolders->searchHits as $subfolder) {
                    $arrMenu[$result->valueObject->contentInfo->name][] = array($subfolder->valueObject->contentInfo->name => $subfolder->valueObject->id);
                }
            } else {
                    $arrMenu[$result->valueObject->contentInfo->name][] = $result->valueObject->id;
            }
        }
        return $this->render("AppBundle:Menu:menu.html.twig", array('data' => $arrMenu), new Response());
    }

}
