#lang racket/base

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
;;
;; See the current version of the racket style guide here:
;; http://docs.racket-lang.org/style/index.html


(define data-2020
  (hash '小寒 (moment 2020 01 06 05 30 04 28800)
        '大寒 (moment 2020 01 20 22 54 38 28800)
        '立春 (moment 2020 02 04 17 03 17 28800)
        '雨水 (moment 2020 02 19 12 56 58 28800)
        '惊蛰 (moment 2020 03 05 10 56 51 28800)
        '春分 (moment 2020 03 20 11 49 35 28800)
        '清明 (moment 2020 04 04 15 38 08 28800)
        '谷雨 (moment 2020 04 19 22 45 26 28800)
        '立夏 (moment 2020 05 05 08 51 21 28800)
        '小满 (moment 2020 05 20 21 49 15 28800)
        '芒种 (moment 2020 06 05 12 58 23 28800)
        '夏至 (moment 2020 06 21 05 43 38 28800)
        '小暑 (moment 2020 07 06 23 14 25 28800)
        '大暑 (moment 2020 07 22 16 36 50 28800)
        '立秋 (moment 2020 08 07 09 06 09 28800)
        '处暑 (moment 2020 08 22 23 44 53 28800)
        '白露 (moment 2020 09 07 12 08 00 28800)
        '秋分 (moment 2020 09 22 21 30 36 28800)
        '寒露 (moment 2020 10 08 03 55 13 28800)
        '霜降 (moment 2020 10 23 06 59 30 28800)
        '立冬 (moment 2020 11 07 07 13 53 28800)
        '小雪 (moment 2020 11 22 04 39 43 28800)
        '大雪 (moment 2020 12 07 00 09 28 28800)
        '冬至 (moment 2020 12 21 18 02 18 28800)))

(define 24-solar-term
  (hash '立春 the-beginning-of-spring
        '雨水 rain-water
        '惊蛰 the-waking-of-insects
        '春分 the-spring-equinox
        '清明 pure-brightness
        '谷雨 grain-rain
        '立夏 the-beginning-of-summer
        '小满 lesser-fullness-of-grain
        '芒种 grain-in-beard
        '夏至 the-summer-solstice
        '小暑 lesser-heat
        '大暑 greater-heat
        '立秋 the-beginning-of-autumn
        '处暑 the-end-of-heat
        '白露 white-eew
        '秋分 the-autumn-equinox
        '寒露 cold-dew
        '霜降 frosts-descent
        '立冬 the-beginning-of-winter
        '小雪 lesser-snow
        '大雪 greater-snow
        '冬至 the-winter-solstice
        '小寒 lesser-cold
        '大寒 greater-cold))

(if (= 2020 (->year (now/moment)))
    (hash-ref data-2020 '立春)
    'nil)


(solar-term-name a-bit-frigid)




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
