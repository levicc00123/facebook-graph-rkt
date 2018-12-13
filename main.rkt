#lang racket

(module+ test
  (require rackunit
           request))

(module+ core
  (require request)

  (define rq ((make-domain-requester "graph.facebook.com" (make-https-requester http-requester))))

  (define (mklogin appid redirect state)
    (current-requester rq)
    