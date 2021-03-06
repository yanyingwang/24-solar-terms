#lang at-exp racket/base

(require gregor
         racket/format
         racket/list
         racket/dict
         (file "houying.rkt")
         (file "jieqi.rkt")
         (file "convert.rkt")
         (file "data.rkt"))

(provide 二十四时节
         上一时节
         下一时节)

(struct 时节 (节气 时间)
  #:methods gen:custom-write
  [(define (write-proc instan port mode)
     (define 节 (时节-节气 instan))
     (define 时 (时节-时间 instan))
     (define 初候时 时)
     (define 二候时 (+days 初候时 5))
     (define 三候时 (+days 二候时 5))
     (define 节名 (节气-名字 节))
     (define 节排位 (节气-排位 节))
     (define 初候名 (候应-名字 (节气->初候 节)))
     (define 二候名 (候应-名字 (节气->二候 节)))
     (define 三候名 (候应-名字 (节气->三候 节)))
     (define 时名 (~t 时 "HH:mm:ss"))
     (define 初候时名 (~t 初候时 "yyyy-MM-dd"))
     (define 二候时名 (~t 二候时 "yyyy-MM-dd"))
     (define 三候时名 (~t 三候时 "yyyy-MM-dd"))
     (display @~a{#<时节-@|节名|@时名(#@节排位)-(@|初候名|@初候时名 @|二候名|@二候时名 @|三候名|@三候时名)>}
              port))])

(define (创建时节 某节气 某年)
  (define 某节气之时间 (->时间 (节气-名字 某节气) 某年))
  (时节 某节气 某节气之时间))

(define (二十四时节 [某年 (->year (today))])
  (map (lambda (某节气)
         (创建时节 某节气 某年))
   二十四节气))

(define (下一时节 某时节)
  (define 彼节气 (下一节气 (时节-节气 某时节)))
  (findf (lambda (某时节)
           (equal? 彼节气 (时节-节气 某时节)))
         (二十四时节)))

(define (上一时节 某时节)
  (define 彼节气 (上一节气 (时节-节气 某时节)))
  (findf (lambda (其)
           (equal? 彼节气 (时节-节气 其)))
         (二十四时节)))
