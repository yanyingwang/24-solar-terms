#lang at-exp racket/base

(require racket/format
         racket/dict)

(provide 七十二候应)

(struct 候应 (名字 释义 绝对排位 相对排位 所属节气)
  #:methods gen:custom-write
  [(define (write-proc 此 port mode)
     (display @~a{#<候应-@(候应-名字 此)(#@(候应-排位 此))>}
              port))])


(define 七十二候应 '())
