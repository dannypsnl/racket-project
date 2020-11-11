#lang racket

(module+ main
  (require racket/cmdline)

  (define who (box "world"))
  (command-line
    #:program "racket-project"
    #:once-each
    [("-n" "--name") name "Who to say hello to" (set-box! who name)]
    #:args ()
    (printf "hello ~a~n" (unbox who))))
