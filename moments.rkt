#lang at-exp racket/base

(require gregor)
(provide data)

(struct 节气始时 (小寒 大寒 立春 雨水 惊蛰 春分 清明 谷雨 立夏 小满 芒种 夏至 小暑 大暑 立秋 处暑 白露 秋分 寒露 霜降 立冬 小雪 大雪 冬至 ))


(define data (hash 2020
                   (hash '小寒 (moment 2020 1 6 05 30 00 28800)
                         '大寒 (moment 2020 1 20 22 55 00 28800)
                         '立春 (moment 2020 2 4 17 03 00 28800)
                         '雨水 (moment 2020 2 19 12 57 00 28800)
                         '惊蛰 (moment 2020 3 5 10 57 00 28800)
                         '春分 (moment 2020 3 20 11 50 00 28800)
                         '清明 (moment 2020 4 4 15 38 00 28800)
                         '谷雨 (moment 2020 4 19 22 45 00 28800)
                         '立夏 (moment 2020 5 5 08 51 00 28800)
                         '小满 (moment 2020 5 20 21 49 00 28800)
                         '芒种 (moment 2020 6 5 12 58 00 28800)
                         '夏至 (moment 2020 6 21 05 44 00 28800)
                         '小暑 (moment 2020 7 6 23 14 00 28800)
                         '大暑 (moment 2020 7 22 16 37 00 28800)
                         '立秋 (moment 2020 8 7 09 06 00 28800)
                         '处暑 (moment 2020 8 22 23 45 00 28800)
                         '白露 (moment 2020 9 7 12 08 00 28800)
                         '秋分 (moment 2020 9 22 21 31 00 28800)
                         '寒露 (moment 2020 10 8 03 55 00 28800)
                         '霜降 (moment 2020 10 23 07 00 00 28800)
                         '立冬 (moment 2020 11 7 07 14 00 28800)
                         '小雪 (moment 2020 11 22 04 40 00 28800)
                         '大雪 (moment 2020 12 7 00 09 00 28800)
                         '冬至 (moment 2020 12 21 18 02 00 28800))))

(define 2020年
  (节气始时 (moment 2020 01 06 05 30 04 28800)
            (moment 2020 01 20 22 54 38 28800)
            (moment 2020 02 04 17 03 17 28800)
            (moment 2020 02 19 12 56 58 28800)
            (moment 2020 03 05 10 56 51 28800)
            (moment 2020 03 20 11 49 35 28800)
            (moment 2020 04 04 15 38 08 28800)
            (moment 2020 04 19 22 45 26 28800)
            (moment 2020 05 05 08 51 21 28800)
            (moment 2020 05 20 21 49 15 28800)
            (moment 2020 06 05 12 58 23 28800)
            (moment 2020 06 21 05 43 38 28800)
            (moment 2020 07 06 23 14 25 28800)
            (moment 2020 07 22 16 36 50 28800)
            (moment 2020 08 07 09 06 09 28800)
            (moment 2020 08 22 23 44 53 28800)
            (moment 2020 09 07 12 08 00 28800)
            (moment 2020 09 22 21 30 36 28800)
            (moment 2020 10 08 03 55 13 28800)
            (moment 2020 10 23 06 59 30 28800)
            (moment 2020 11 07 07 13 53 28800)
            (moment 2020 11 22 04 39 43 28800)
            (moment 2020 12 07 00 09 28 28800)
            (moment 2020 12 21 18 02 18 28800)))

(define 2021年
  (节气始时 (moment 2021 1 5 11 23 0 28800)
            (moment 2021 1 20 04 40 0 28800)
            (moment 2021 2 3 22 59 0 28800)
            (moment 2021 2 18 18 44 0 28800)
            (moment 2021 3 5 16 54 0 28800)
            (moment 2021 3 20 17 37 0 28800)
            (moment 2021 4 4 21 35 0 28800)
            (moment 2021 4 20 04 33 0 28800)
            (moment 2021 5 5 14 47 0 28800)
            (moment 2021 5 21 03 37 0 28800)
            (moment 2021 6 5 18 52 0 28800)
            (moment 2021 6 21 11 32 0 28800)
            (moment 2021 7 7 05 05 0 28800)
            (moment 2021 7 22 22 26 0 28800)
            (moment 2021 8 7 14 54 0 28800)
            (moment 2021 8 23 05 35 0 28800)
            (moment 2021 9 7 17 53 0 28800)
            (moment 2021 9 23 03 21 0 28800)
            (moment 2021 10 8 09 39 0 28800)
            (moment 2021 10 23 12 51 0 28800)
            (moment 2021 11 7 12 59 0 28800)
            (moment 2021 11 22 10 34 0 28800)
            (moment 2021 12 7 05 57 0 28800)
            (moment 2021 12 21 23 59 0 28800)))


#;(define 24-solar-term
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
        '白露 white-dew
        '秋分 the-autumn-equinox
        '寒露 cold-dew
        '霜降 frosts-descent
        '立冬 the-beginning-of-winter
        '小雪 lesser-snow
        '大雪 greater-snow
        '冬至 the-winter-solstice
        '小寒 lesser-cold
        '大寒 greater-cold))