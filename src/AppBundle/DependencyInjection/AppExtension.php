<?php

namespace AppBundle\DependencyInjection;

use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\Config\FileLocator;
use Symfony\Component\HttpKernel\DependencyInjection\Extension;
use Symfony\Component\DependencyInjection\Loader;
use Symfony\Component\Yaml\Yaml;
use Symfony\Component\DependencyInjection\Extension\PrependExtensionInterface;
use eZ\Bundle\EzPublishCoreBundle\DependencyInjection\Configuration\SiteAccessAware\ConfigurationProcessor;
use Symfony\Component\Config\Resource\FileResource;

/**
 * This is the class that loads and manages your bundle configuration
 *
 * To learn more see {@link http://symfony.com/doc/current/cookbook/bundles/extension.html}
 */
class AppExtension extends Extension implements PrependExtensionInterface
{
    /**
     * {@inheritdoc}
     */
    public function load(array $configs, ContainerBuilder $container)
    {
        $configuration = new Configuration();
        $config = $this->processConfiguration($configuration, $configs);

        $loader = new Loader\YamlFileLoader($container, new FileLocator(__DIR__.'/../Resources/config'));
        $loader->load('services.yml');
        $processor = new ConfigurationProcessor( $container, 'app_bundle' );
    }
    public function prepend( ContainerBuilder $container )
    {
        $container->prependExtensionConfig( 'assetic', array( 'bundles' => array( 'AppBundle' ) ) );
        $this->prependYui( $container );
        $this->prependCss( $container );
    }
   private function prependYui( ContainerBuilder $container )
    {
        $container->setParameter(
            'app_bundle.public_dir',
            'bundles/app'
        );
        $yuiConfigFile = __DIR__ . '/../Resources/config/yui.yml';
        $config = Yaml::parse( file_get_contents( $yuiConfigFile ) );
        $container->prependExtensionConfig( 'ez_platformui', $config );
        $container->addResource( new FileResource( $yuiConfigFile ) );
    }
   private function prependCss( ContainerBuilder $container )
    {
        $container->setParameter(
            'app_bundle.css_dir',
            'bundles/app/css'
        );
        $cssConfigFile = __DIR__ . '/../Resources/config/css.yml';
        $config = Yaml::parse( file_get_contents( $cssConfigFile ) );
        $container->prependExtensionConfig( 'ez_platformui', $config );
        $container->addResource( new FileResource( $cssConfigFile ) );
    }
}