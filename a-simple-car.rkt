#lang racket

(require racket/draw)
(require racket/gui)
(require (prefix-in greg: gregor))

(define target (make-bitmap 500 500))
(define dc (new bitmap-dc% [bitmap target]))

; See documentation about smoothing
; This mode makes the pen fall on whole pixels
(send dc set-smoothing 'aligned)

(send dc translate 100 100)

(send dc draw-rectangle
      0 0
      200 100)

(send dc translate 0 -50)

(send dc draw-arc
      0 0
      200 100
      0 3.14)

(make-object image-snip% target)

