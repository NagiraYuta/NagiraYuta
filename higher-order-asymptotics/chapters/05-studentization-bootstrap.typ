#let body = [
= Student 化と bootstrap の高次精度
<student-化と-bootstrap-の高次精度>
== 未知分散という問題
<未知分散という問題>
単純な標準化平均 $ Z_n = frac(sqrt(n) (X^(‾) - mu), sigma) $ では
$sigma$ が既知である。しかし実際には
$ T_n = frac(sqrt(n) (X^(‾) - mu), S) $ を使うことが多い。$S$
の推定誤差は $n^(- 1 \/ 2)$ オーダーなので、一次漸近分布では同じ
$N (0 , 1)$ に見えても、Edgeworth 補正項は変わる。

== 確率展開
<確率展開>
$S^2$ を $sigma^2$ の周りで展開すると、形式的には
$ S = sigma { 1 + O_(bb(P)) (n^(- 1 \/ 2)) } , $ したがって
$ 1 / S = 1 / sigma { 1 + O_(bb(P)) (n^(- 1 \/ 2)) } . $ よって
$ T_n = Z_n + n^(- 1 \/ 2) A_n + n^(- 1) B_n + o_(bb(P)) (n^(- 1)) $
という確率展開を作り、$Z_n$
と分散推定量に関する同時キュムラントを計算して Edgeworth 展開へ移す。

この「統計量を基本的な標本平均ベクトルの滑らかな関数として表す」方法は、Student
化に限らず M 推定量、尤度統計量、回帰統計量などで広く使われる。

== pivotalization の意味
<pivotalization-の意味>
Student 化は単に未知パラメータ $sigma$
を推定値で置き換える操作ではない。適切な Student
化によって、分布近似が未知の nuisance parameter
に依存しにくくなり、bootstrap の精度が上がる。

一次正確（first-order accurate）とは、近似誤差が典型的に
$O (n^(- 1 \/ 2))$ 程度であることを指す。一方、Student 化された smooth
statistic に対する bootstrap では、条件のもとで $O (n^(- 1))$
あるいはそれより小さい誤差を達成する「second-order
accuracy」が現れる。Hall の理論では Edgeworth
展開がこの改善を解析する主要道具となる。

== bootstrap と Edgeworth の接続
<bootstrap-と-edgeworth-の接続>
真の統計量の分布を
$ F_n (x) = Phi (x) + n^(- 1 \/ 2) p_1 (x) phi.alt (x) + n^(- 1) p_2 (x) phi.alt (x) + dots.h.c $
とする。bootstrap 条件付き分布が
$ F_n^(\*) (x) = Phi (x) + n^(- 1 \/ 2) hat(p)_1 (x) phi.alt (x) + n^(- 1) hat(p)_2 (x) phi.alt (x) + dots.h.c $
をもち、$hat(p)_j$
が対応する母集団量を十分高精度で推定するなら、単純な正規近似では再現できない補正項まで
bootstrap が自動的に再現する。これが「bootstrap
がなぜ一次正規近似を超えられるのか」の解析的説明である。

#block[
#strong[注意 5.1]. 「second-order
accurate」という語の厳密な誤差次数は、片側・両側区間、bootstrap
percentile、bootstrap-$t$
など手続きによって異なる。ここでは、一次正規近似より一段小さい誤差を達成するという概念を指している。

]
]
