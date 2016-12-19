<?php

namespace AppBundle\Mail;

use Symfony\Bundle\TwigBundle\TwigEngine as Templating;
use Symfony\Component\Translation\TranslatorInterface;
use Swift_Mailer;
use Swift_Message;

Class Notification {

    protected $mailer;
    protected $translator;
    protected $templating;
    protected $senderEmail;
    protected $recipientEmail;

    public function __construct(
    Swift_Mailer $mailer, TranslatorInterface $translator, Templating $templating, $senderEmail, $recipientEmail
    ) {
        $this->mailer = $mailer;
        $this->translator = $translator;
        $this->templating = $templating;
        $this->senderEmail = $senderEmail;
        $this->recipientEmail = $recipientEmail;
    }

    public function send($contact = NULL) {
        $title = $this->translator->trans('Notification from your Website');
        $message = Swift_Message::newInstance()
                ->setSubject($title)
                ->setFrom($this->senderEmail)
                ->setTo($this->recipientEmail)
                ->setReplyTo($this->recipientEmail)
                ->setContentType('text/html')
                ->setBody(
                $this->templating->render('AppBundle:mail:notification.html.twig', [
                    'contact' => $contact
                ]));
        return $this->mailer->send($message);
    }

}
