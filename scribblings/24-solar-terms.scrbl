#lang scribble/manual
@require[@for-label[24-solar-terms
                    racket/base]
         scribble/eval]

@(define my-eval
   (make-eval-factory '(24-solar-terms)))

@title{24-solar-terms}
@author[(author+email "Yanying Wang" "yanyingwang1@gmail.com")]

@defmodule[24-solar-terms]{
24 solar terms
}

@itemlist[
@item{source code: @url["https://github.com/yanyingwang/24-solar-terms"]}
@item{refs: @hyperlink["http://www.yanying.wang/2019/12/%E7%94%B1%E6%B1%89%E8%AF%AD%E7%BC%96%E7%A8%8B%E6%89%80%E6%83%B3%E5%88%B0%E7%9A%84.html" "check my post"]}
]


@[table-of-contents]


@; --------------------------------------------------------------------------------------------------
@section{Example}

@examples[
#:eval (my-eval)
二十四节气
七十二候应

(require 24-solar-terms/jieqi)
惊蛰
白露
小雪
(上一节气 白露)
(下一节气 白露)
(节气-候应 白露)
(节气-二候 白露)
(节气-释义 白露)
(节气-气候 白露)
(节气-农事 白露)

(require 24-solar-terms/houying)
东风解冻
麦秋至
雁北乡
(候应-名字 麦秋至)
(候应-释义 麦秋至)
]
