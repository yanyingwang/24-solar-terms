#lang at-exp racket/base

(require gregor
         racket/format
         racket/list
         racket/dict
         (file "data.rkt")
         (file "houying.rkt")
         (file "jieqi.rkt")
         (file "convert.rkt")
         )

(provide 七十二时候)


(struct 时候 (候应 时间)
  #:methods gen:custom-write
  [(define (write-proc 本 port mode)
     (define 其候应 (时候-候应 本))
     (define 其候应之名 (候应-名字 其候应))
     (define 其候应之排位 (候应-排位 其候应))
     (define 其候应之相对排位 (候应-相对排位 其候应))
     (define 其时间 (时候-时间 本))
     (define 其时间之名 (~t 其时间 "yyyy-MM-dd/HH:mm:ss"))
     (display @~a{#<时候-@|其候应之名|(#@|其候应之排位|/#@|其候应之相对排位|)(@|其时间之名|)>}
              port))])

(define (创建时候 某候应 某年)
  (define 其节气 (候应->节气 某候应))
  (define 其节气之时间 (->时间 (节气-名字 其节气) 某年))
  (define 某候应之时间
    (case (候应-相对排位 某候应)
      [(1) 其节气之时间] ; 初候是也
      [(2) (+days 其节气之时间 5)] ; 二候是也
      [(3) (+days 其节气之时间 10)])) ;三候是也
  (时候 某候应 某候应之时间))

(define (七十二时候 [某年 (->year (today))])
  (map (lambda (某候应)
         (创建时候 某候应 某年))
   七十二候应))
