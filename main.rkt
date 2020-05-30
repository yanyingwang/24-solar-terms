#lang at-exp racket/base

(module+ test
  (require rackunit))

;; Notice
;; To install (from within the package directory):
;;   $ raco pkg install
;; To install (once uploaded to pkgs.racket-lang.org):
;;   $ raco pkg install <<name>>
;; To uninstall:
;;   $ raco pkg remove <<name>>
;; To view documentation:
;;   $ raco docs <<name>>
;;
;; For your convenience, we have included LICENSE-MIT and LICENSE-APACHE files.
;; If you would prefer to use a different license, replace those files with the
;; desired license.
;;
;; Some users like to add a `private/` directory, place auxiliary files there,
;; and require them in `main.rkt`.
;; See the current version of the racket style guide here:
;; http://docs.racket-lang.org/style/index.html

(require gregor
         racket/format
         racket/list
         (file "details.rkt")
         (file "moments.rkt"))


(struct 时节 (节气 时间)
  #:methods gen:custom-write
  [(define (write-proc instan port mode)
     (define 节 (时节-节气 instan))
     (define 时 (时节-时间 instan))
     (define 初候时 时)
     (define 二候时 (+days 初候时 5))
     (define 三候时 (+days 二候时 5))

     (define 节名 (节气-名字 节))
     (define 初候名 (first (hash-keys (节气-候应 节))))
     (define 二候名 (second (hash-keys (节气-候应 节))))
     (define 三候名 (third (hash-keys (节气-候应 节))))

     (define 初候时名 (~t 初候时 "y-MM-dd"))
     (define 二候时名 (~t 二候时 "y-MM-dd"))
     (define 三候时名 (~t 三候时 "y-MM-dd"))
     (display @~a{#<时节-@|节名|: @|初候名|@|初候时名| @|二候名|@|二候时名| @|三候名|@|三候时名|>}
              port))])

(define (创建时节 此节气 此年份)
  (define 此时间 (hash-ref (hash-ref data 此年份) (节气-名字 此节气)))
  (时节 此节气 此时间))

(创建时节 冬至 2020)

(define (二十四节气 年)
  (list 立春 雨水 惊蛰 春分 清明 谷雨 立夏 小满 芒种 夏至 小暑 大暑 立秋 处暑 白露 秋分 寒露 霜降 立冬 小雪 大雪 冬至 小寒 大寒))


;; (define a (二十四节气 2020))

;; (二十四节气-春分 a)




(define html
  @~a{
      <!DOCTYPE html>
      <html>
      <head>
      <meta charset="utf-8" />
      <meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible" />
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover" name="viewport" />
      <title>小寒 · 雁北鄉</title><meta name="csrf-param" content="authenticity_token" />
      <meta name="csrf-token" content="8LFdkHCGt1jwI2E4+2s4Ygur7KpUtK6b2YsfY1nFu0zS/SS1DTdEud8lIdta8Y46egdxxRo1ygHRUS7vqJhVrA==" />
      <link rel="stylesheet" media="all" href="assets/main.css" />
      </head>


      <body class="terms" ontouchstart="">
      <div class="term-head">
      <!-- <img src="http://pic.yupoo.com/fotomag/8e294495/d33d9a73.jpg" /> -->
      <div class="main-cntr">
      <div class="title-cntr">
      <h1 class="title">小寒</h1>
      <h4 class="date">1 月 6 日 ≀ 1 月 19 日</h4></div>
      </div>
      </div>

      <div class="main-cntr">

      <h3>初候 · 1月6日~1月10日</h3>
      <h2>雁北鄉</h2>

      <p class="mt20">小寒五日时，大雁避暖，开始向北迁徙。 </p>
      <hr />
      <p>小寒，是二十四节气中的第二十三个节气，即太阳到达黄经285°之时，在公历每年1月3日至1月5日之间。小寒标志着开始进入一年中最寒冷的日子，最寒冷的「三九天」多处于小寒节气。 </p>

      <dl class="terms-fields clearfix">
      <dt>气候</dt>
      <dd>寒潮 显著降温</dd>
      <dt>习俗</dt>
      <dd>吃菜饭</dd>
      <dt>饮食</dt>
      <dd>蒜苗 韭黄 牛肉 羊肉</dd>
      <dt>农事</dt>
      <dd>防寒防冻、追施冬肥</dd>
      <dt>植物</dt>
      <dd>腊梅、山茶、水仙</dd>
      </dl>
      <hr />

      <div class="pentad">
      <div class="section-icon terms-sprt-terms-first"></div>
      <div class="date">1月6日~1月10日</div>
      <h5>雁北鄉</h5>
      <p>小寒五日时，大雁避暖，开始向北迁徙。 </p>
      <hr />
      </div>

      <div class="pentad">
      <div class="section-icon terms-sprt-terms-second"></div>
      <div class="date">1月11日~1月15日</div>
      <h5>鵲始巢</h5>
      <p>小寒后十日，喜鹊开始筑巢。 </p>
      <hr />
      </div>

      <div class="pentad">
      <div class="section-icon terms-sprt-terms-third"></div>
      <div class="date">1月16日~1月19日</div>
      <h5>雉始雊</h5>
      <p>小寒后十五日，早春将至，野鸡开始鸣叫。 </p>
      </div>

      <hr />

      <div class="habitude">
      <div class="section-icon terms-sprt-terms-habitude"></div>
      <h6>吃菜饭</h6>
      <p class="mt10">南京有小寒吃菜饭的习俗。人们会将糯米与生姜、矮脚黄、咸肉、香肠等做成菜饭食用，以抵御寒冷天气，达到健脾暖胃、温肺散寒的功效。</p>
      </div>

      <hr />

      <div class="next-term">
      <!-- <img class="bg" src="http://pic.yupoo.com/fotomag/c25c3f59/10512d74.jpg" /> -->
      <div class="text">
      <div class="title">下一個節气 · 大寒</div>
      <div class="date">1 / 20 ~ 2 / 3</div>
      </div>
      </div>

      </div>

      </body>

      </html>

      }
  )




(module+ test
  ;; Any code in this `test` submodule runs when this file is run using DrRacket
  ;; or with `raco test`. The code here does not run when this file is
  ;; required by another module.

  (check-equal? (+ 2 2) 4))

(module+ main
  ;; (Optional) main submodule. Put code here if you need it to be executed when
  ;; this file is run using DrRacket or the `racket` executable.  The code here
  ;; does not run when this file is required by another module. Documentation:
  ;; http://docs.racket-lang.org/guide/Module_Syntax.html#%28part._main-and-test%29

  (require racket/cmdline)
  (define who (box "world"))
  (command-line
    #:program "my-program"
    #:once-each
    [("-n" "--name") name "Who to say hello to" (set-box! who name)]
    #:args ()
    (printf "hello ~a~n" (unbox who))))
