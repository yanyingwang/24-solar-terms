#lang at-exp racket/base

(require gregor
         racket/format
         racket/list
         racket/dict
         (file "jieqi.rkt")
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
     (define 初候名 (first (dict-keys (节气-候应 节))))
     (define 二候名 (second (dict-keys (节气-候应 节))))
     (define 三候名 (third (dict-keys (节气-候应 节))))
     (define 时名 (~t 时 "HH:mm:ss"))
     (define 初候时名 (~t 初候时 "yyyy-MM-dd"))
     (define 二候时名 (~t 二候时 "yyyy-MM-dd"))
     (define 三候时名 (~t 三候时 "yyyy-MM-dd"))
     (display @~a{#<时节-@|节名|@时名(#@节排位)-(@|初候名|@初候时名 @|二候名|@二候时名 @|三候名|@三候时名)>}
              port))])

(define (创建时节 此节气 此年份)
  (define 此时间 (hash-ref (hash-ref data 此年份) (节气-名字 此节气)))
  (时节 此节气 此时间))

(define (二十四时节 [年份 (->year (today))])
  (map (lambda (其节气)
         (创建时节 其节气 年份))
   二十四节气))

(define (下一时节 此时节)
  (define 彼节气 (下一节气 (时节-节气 此时节)))
  (findf (lambda (其)
           (equal? 彼节气 (时节-节气 其)))
         (二十四时节)))

(define (上一时节 此时节)
  (define 彼节气 (上一节气 (时节-节气 此时节)))
  (findf (lambda (其)
           (equal? 彼节气 (时节-节气 其)))
         (二十四时节)))
