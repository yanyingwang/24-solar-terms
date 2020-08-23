#lang at-exp racket/base


(require gregor
         racket/format
         racket/list
         racket/dict
         ;; (file "houying.rkt")
         ;; (file "jieqi.rkt")
         ;; (file "shijie.rkt")
         ;; (file "shihou.rkt")
         )

(provide
         ;; 二十四节气
         ;; 二十四时节
         ;; 七十二候应
         ;; 七十二时候
         )



;; (define 今时节 (first (二十四时节)))
;; (define 下一时节 (first (二十四时节)))
;; (define 今节气 (时节-节气 今时节))
;; (define 下节气 (时节-节气 下一时节))

;; (define html
;;   @~a{
;;       <!DOCTYPE html>
;;       <html>
;;       <head>
;;       <meta charset="utf-8" />
;;       <meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible" />
;;       <meta content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover" name="viewport" />
;;       <title>@(节气-名字 今节气) · @(car (first (节气-候应 今节气)))</title>
;;       <link rel="stylesheet" media="all" href="assets/main.css" />
;;       </head>

;;       <body class="terms" ontouchstart="">
;;       <div class="term-head">
;;       <div class="main-cntr">
;;       <div class="title-cntr">
;;       <h1 class="title">@(节气-名字 今节气)</h1>
;;       <h4 class="date">1 月 6 日 ≀ 1 月 19 日</h4></div>
;;       </div>
;;       </div>

;;       <div class="main-cntr">

;;       <h3>初候 · 1月6日~1月10日</h3>
;;       <h2>雁北鄉</h2>
;;       <p class="mt20">小寒五日时，大雁避暖，开始向北迁徙。 </p>

;;       <hr />
;;       <p>@(节气-释义 今节气) </p>

;;       <dl class="terms-fields clearfix">
;;       <dt>气候</dt>
;;       <dd>@(节气-气候 今节气)</dd>
;;       <dt>习俗</dt>
;;       <dd>@(string-join (hash-keys (节气-习俗 今节气)) " ")</dd>
;;       <dt>饮食</dt>
;;       <dd>@(节气-饮食 今节气)

;;       <dt>农事</dt>
;;       <dd>@(节气-农事 今节气)</dd>

;;       <dt>植物</dt>
;;       <dd>@(节气-植物 今节气)</dd>
;;       </dl>
;;       <hr />

;;       <div class="pentad">
;;       <div class="section-icon terms-sprt-terms-first"></div>
;;       <div class="date">1月6日~1月10日</div>
;;       <h5>雁北鄉</h5>
;;       <p>小寒五日时，大雁避暖，开始向北迁徙。 </p>
;;       <hr />
;;       </div>

;;       <div class="pentad">
;;       <div class="section-icon terms-sprt-terms-second"></div>
;;       <div class="date">1月11日~1月15日</div>
;;       <h5>鵲始巢</h5>
;;       <p>小寒后十日，喜鹊开始筑巢。 </p>
;;       <hr />
;;       </div>

;;       <div class="pentad">
;;       <div class="section-icon terms-sprt-terms-third"></div>
;;       <div class="date">1月16日~1月19日</div>
;;       <h5>雉始雊</h5>
;;       <p>小寒后十五日，早春将至，野鸡开始鸣叫。 </p>
;;       </div>

;;       <hr />

;;       <div class="habitude">
;;       <div class="section-icon terms-sprt-terms-habitude"></div>
;;       <h6>吃菜饭</h6>
;;       <p class="mt10">南京有小寒吃菜饭的习俗。人们会将糯米与生姜、矮脚黄、咸肉、香肠等做成菜饭食用，以抵御寒冷天气，达到健脾暖胃、温肺散寒的功效。</p>
;;       </div>

;;       <hr />

;;       <div class="next-term">
;;       <!-- <img class="bg" src="http://pic.yupoo.com/fotomag/c25c3f59/10512d74.jpg" /> -->
;;       <div class="text">
;;       <div class="title">下一個節气 · @(节气-名字 下节气) </div>
;;       <div class="date">1 / 20 ~ 2 / 3</div>
;;       </div>
;;       </div>

;;       </div>

;;       </body>

;;       </html>

;;       }
;;   )



(module+ test
  ;; Any code in this `test` submodule runs when this file is run using DrRacket
  ;; or with `raco test`. The code here does not run when this file is
  ;; required by another module.
(require rackunit)
  (check-equal? (+ 2 2) 4))
