#lang racket

(require racket/draw)
(require racket/gui)

(define target (make-bitmap 1500 500))
(define dc (new bitmap-dc% [bitmap target]))

; See documentation about smoothing
; This mode makes the pen fall on whole pixels
(send dc set-smoothing 'aligned)

(send dc translate 100 100)

;(send dc draw-rectangle
;      0 0
;      200 100)
;
;(send dc translate 0 -50)
;
;(send dc draw-arc
;      0 0
;      200 100
;      0 3.14)

(define (make-wheel wheel-size)
  ;(define (make-an-x length)
  ;  (let ((quarter (/ length 4)))
  ;    (send dc draw-line quarter quarter length length)
  ;    (send dc draw-line quarter length length quarter)))

  (define (make-a-+ length)
    (let ((half (/ length 2)))
      (send dc draw-line 0 half length half)
      (send dc draw-line half 0 half length)))


  (send dc draw-ellipse
        0 0
        wheel-size wheel-size)

  (send dc draw-ellipse
        (- (/ wheel-size 2) 5) (- (/ wheel-size 2) 5)
        10 10)

  ;(make-an-x wheel-size)
  (make-a-+ wheel-size))

(make-wheel 100)

(send dc translate 400 0)

(make-wheel 100)
(make-object image-snip% target)

