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

@smaller{因为汉语厚重的历史所积淀下来的丰富涵义以及自由语素等等相关的语言特性，当其被用于编程语言的元语言的时候，我料想会另编程迸发出新的活力，更会另编程汉语母语使用者挣脱掉其他语言的束缚和干扰，进而营造机会推动计算机信息世界的汉语化进程。
@linebreak{}
另又因为lisp极其简单的语法特性，使得汉语编程更容易以之为载体而实现，此二十四节气库即为我的一个尝试，其源码虽构建在racket库之上，但却基于汉语语素来构建了编程语法框架。
@linebreak{}
  二十四节气本质上是完完全全中华文化的体现，中华文化本质上构建在易经的阴阳学说之上。空气混沌本为一物，然在太阳作用之下，冷热两气交互作用，如同阴阳两极，催生春夏秋冬四季，又化二十四节气和七十二候应。
@linebreak{}
谁曾想，上下五千年后，计算机的0/1世界，lisp的本质思想，却不无都同样揭示出「如此复杂的世界本质上确是极其简单的道的变化的结果」。
}
}

@itemlist[
@item{source code: @url["https://github.com/yanyingwang/24-solar-terms"]}
@item{wiki: @url["https://en.wikipedia.org/wiki/Solar_term"]}
@item{refs: @hyperlink["http://www.yanying.wang/2019/12/%E7%94%B1%E6%B1%89%E8%AF%AD%E7%BC%96%E7%A8%8B%E6%89%80%E6%83%B3%E5%88%B0%E7%9A%84.html" "check my post"]}
]


@[table-of-contents]


@; --------------------------------------------------------------------------------------------------
@section{Example}

@examples[
#:eval (my-eval)

(require 24-solar-terms/jieqi)
惊蛰
小雪
白露
(节气-释义 白露)
(节气-气候 白露)
(节气-农事 白露)
(上一节气 白露)
(下一节气 白露)
二十四节气

(require 24-solar-terms/houying)
东风解冻
雁北乡
麦秋至
(候应-名字 麦秋至)
(候应-释义 麦秋至)
(候应-相对排位名 雁北乡)
七十二候应

(require 24-solar-terms/convert)
(候应->节气 蚯蚓结)
(节气->候应 白露)
(节气->二候 白露)

(require 24-solar-terms/shijie)
(car (二十四时节))
(上一时节 (caddr (二十四时节)))
(二十四时节)


]
