#let body = [
= 計算公式集
<計算公式集>
== Hermite 多項式
<hermite-多項式-1>
$ "He"_0 = 1 , quad "He"_1 = x , quad "He"_2 = x^2 - 1 , quad "He"_3 = x^3 - 3 x , $
$ "He"_4 = x^4 - 6 x^2 + 3 , quad "He"_5 = x^5 - 10 x^3 + 15 x , $
$ "He"_6 = x^6 - 15 x^4 + 45 x^2 - 15 . $ 漸化式
$ "He"_(r + 1) (x) = x "He"_r (x) - r "He"_(r - 1) (x) $ も便利である。

== 標準化和の主要公式
<標準化和の主要公式>
$bb(E) X = 0 , "Var" X = 1$ のとき
$ kappa_r (S_n) = n^(1 - r \/ 2) kappa_r (X) . $ 密度の2次 Edgeworth
近似：
$ f_n (x) approx phi.alt (x) [1 + frac(kappa_3, 6 sqrt(n)) "He"_3 (x) + 1 / n {kappa_4 / 24 "He"_4 (x) + kappa_3^2 / 72 "He"_6 (x)}] . $
分布関数の2次 Edgeworth 近似：
$ F_n (x) approx Phi (x) - phi.alt (x) [frac(kappa_3, 6 sqrt(n)) "He"_2 (x) + 1 / n {kappa_4 / 24 "He"_3 (x) + kappa_3^2 / 72 "He"_5 (x)}] . $
Cornish–Fisher の一次補正：
$ q_(n , alpha) approx z_alpha + frac(kappa_3, 6 sqrt(n)) (z_alpha^2 - 1) . $
]
