#lang at-exp racket/base

(require racket/list
         (file "jieqi.rkt")
         (file "houying.rkt"))

(provide (all-defined-out))

(define (节气->候应 此节气)
  (define i (* (节气-排位 此节气) 3))
  (define 其候 (take-right (take 七十二候应 i) 3))
  其候)

(define (节气->初候 此节气)
  (first (节气->候应 此节气)))

(define (节气->二候 此节气)
  (second (节气->候应 此节气)))

(define (节气->三候 此节气)
  (third (节气->候应 此节气)))

(define (候应->节气 此候应)
  (list-ref 二十四节气 (quotient (sub1 (候应-排位 此候应)) 3)))
