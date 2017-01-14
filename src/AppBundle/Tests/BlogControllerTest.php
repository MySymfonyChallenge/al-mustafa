<?php

namespace AppBundle\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

/**
 * here we test if the blog controller works as it should.
 *
 * @author amirkoklan
 */
class BlogControllerTest extends WebTestCase {
    
    public function testShowBlogPostsAction(){
        $client = static::createClient();
        $crawler = $client->request('GET', '/Veranstaltungen');

         $this->assertGreaterThan(
            0,
            $crawler->filter('a:contains("weiterlesen")')->count()
        );
    }
}