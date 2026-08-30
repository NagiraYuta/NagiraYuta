#let body = [
= Hermite 多項式と Edgeworth 展開
<hermite-多項式と-edgeworth-展開>
== Hermite 多項式
<hermite-多項式>
確率論で便利な probabilists’ Hermite polynomial を
$ "He"_r (x) = (- 1)^r e^(x^2 \/ 2) frac(d^r, d x^r) e^(- x^2 \/ 2) $
で定義する。最初のものは $ "He"_0 (x) & = 1 ,\
"He"_1 (x) & = x ,\
"He"_2 (x) & = x^2 - 1 ,\
"He"_3 (x) & = x^3 - 3 x ,\
"He"_4 (x) & = x^4 - 6 x^2 + 3 ,\
"He"_5 (x) & = x^5 - 10 x^3 + 15 x ,\
"He"_6 (x) & = x^6 - 15 x^4 + 45 x^2 - 15 . $ 標準正規密度 $phi.alt (x)$
に対して $ phi.alt^((r)) (x) = (- 1)^r "He"_r (x) phi.alt (x) , $ また
$ frac(d, d x) { "He"_(r - 1) (x) phi.alt (x) } = - "He"_r (x) phi.alt (x) $
が成り立つ。

== 密度の Edgeworth 展開
<密度の-edgeworth-展開>
前章で得た標準化和の特性関数の高次展開を Fourier
反転すると、形式的に
$ f_n (x) = phi.alt (x) #scale(x: 300%, y: 300%)[\[] 1 & + frac(kappa_3, 6 sqrt(n)) "He"_3 (x)\
 & + 1 / n {kappa_4 / 24 "He"_4 (x) + kappa_3^2 / 72 "He"_6 (x)} #scale(x: 300%, y: 300%)[\]] + o (n^(- 1)) $
が得られる。

ここで重要なのは、$n^(- 1 \/ 2)$ 項は3次キュムラント、$n^(- 1)$
項は4次キュムラントと「3次キュムラントの二乗」で決まることである。

== 分布関数の Edgeworth 展開
<分布関数の-edgeworth-展開>
上式を積分すると
$ F_n (x) = Phi (x) & - frac(kappa_3, 6 sqrt(n)) "He"_2 (x) phi.alt (x)\
 & - 1 / n {kappa_4 / 24 "He"_3 (x) + kappa_3^2 / 72 "He"_5 (x)} phi.alt (x) + o (n^(- 1)) . $
すなわち一次補正は $ frac(kappa_3, 6 sqrt(n)) (1 - x^2) phi.alt (x) $
である。正の歪度をもつ分布では、$x > 1$
の領域でこの補正は負になる。したがって標準正規近似は上側確率を過小評価する方向にずれうる。

#block[
#strong[定理 3.1] \(典型的な Edgeworth 展開の形). #emph[$X_i$ が
i.i.d.、平均0、分散1で、十分高い絶対モーメントが存在し、さらに非格子性を保証する適切な
Cramér 型条件を満たすとする。このとき、標準化和 $S_n$
の分布関数は、必要なモーメント次数に応じて $n^(- 1 \/ 2)$ の冪で一様な
Edgeworth 展開をもつ。特に5次程度までの十分なモーメント条件のもとでは、上記の形の2項展開が成立する。]

]
#block[
#strong[注意 3.2].
上の定理は「使うための典型形」である。最小モーメント条件、Cramér
条件の弱化、一様性の範囲などは定理ごとに異なる。厳密な一般論は
Bhattacharya–Rao や Hall を参照するのがよい。

]
== 例：標準化指数分布
<例標準化指数分布>
$Y tilde.op upright(E x p) (1)$、$X = Y - 1$
とする。このとき平均0、分散1で $ kappa_3 = 2 , #h(2em) kappa_4 = 6 . $
したがって
$ F_n (x) approx Phi (x) & - frac(1, 3 sqrt(n)) (x^2 - 1) phi.alt (x)\
 & - 1 / n [1 / 4 (x^3 - 3 x) + 1 / 18 (x^5 - 10 x^3 + 15 x)] phi.alt (x) . $
$n$ が有限のとき、単に $Phi$
を使うより母分布の歪みを反映した補正となる。

== Edgeworth 級数は確率分布とは限らない
<edgeworth-級数は確率分布とは限らない>
有限次数で打ち切った Edgeworth
近似は、密度近似が負になることもあり、分布関数近似が $[0 , 1]$
を外れることもある。Edgeworth
展開は「近似分布族」ではなく#strong[漸近級数]である。この点は
Gram–Charlier 級数とも関連するが、Edgeworth は $n^(- 1 \/ 2)$
の次数付けを明示し、標準化和の漸近理論として構成される点が本質的に異なる。

#block[
#strong[演習 3.1]. 母分布が対称で $kappa_3 = 0$ のとき、Edgeworth
展開の最初の非ゼロ補正が何次になるか確認せよ。

]
]
