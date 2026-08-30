#let body = [
= 大偏差・指数傾斜・鞍点近似との接続
<大偏差指数傾斜鞍点近似との接続>
== 同じキュムラント母関数が再登場する
<同じキュムラント母関数が再登場する>
標準化和の中心付近では Edgeworth
展開を使った。一方、平均から大きく離れた稀事象では CLT スケール
$n^(- 1 \/ 2)$ ではなく、指数オーダー
$ bb(P) (X^(‾)_n approx x) ≍ e^(- n I (x)) $
を見る。ここでも中心になるのが $ K (t) = log bb(E) [e^(t X)] $ である。

Cramér の定理に現れるレート関数は Legendre–Fenchel 変換
$ I (x) = sup_(t in bb(R)) { t x - K (t) } $ で与えられる。

== 指数傾斜
<指数傾斜>
$t$ を固定し、 $ frac(d P_t, d P) (x) = exp { t x - K (t) } $
で新しい分布 $P_t$ を定める。これは exponential tilting であり、
$ bb(E)_t [X] = K prime (t) , #h(2em) "Var"_t (X) = K prime.double (t) $
となる。稀な値 $x$ を典型的にするよう $t$ を選ぶ、すなわち
$ K prime (t_x) = x $ とするのが大偏差・鞍点近似の基本操作である。

== Edgeworth と大偏差の射程
<edgeworth-と大偏差の射程>
二つの理論を粗く対比すると、

#block[
#figure(
align(center)[#table(
  columns: 3,
  align: (col, row) => (left,left,left,).at(col),
  inset: 6pt,
  [], [Edgeworth 展開], [大偏差・鞍点近似],
  [典型スケール],
  [$X^(‾) - mu = O (n^(- 1 \/ 2))$],
  [$X^(‾) - mu = O (1)$],
  [主対象],
  [正規近似の高次補正],
  [稀事象確率の指数率],
  [主道具],
  [特性関数・キュムラント],
  [cgf・Legendre 変換],
  [出力],
  [$n^(- 1 \/ 2)$ の級数],
  [$e^(- n I (x))$ と前置因子],
)]
)

]
ただし両者は断絶していない。鞍点近似では傾斜後の分布に局所正規近似や
Edgeworth 型補正を組み合わせるため、cgf の高階微分が再び現れる。

== 鞍点近似の骨格
<鞍点近似の骨格>
密度の反転積分を考え、指数部の停留点を $hat(t)$
とする。$K prime (hat(t)) = x$ を満たす $hat(t)$
の周りで指数部を二次展開すると、典型的な鞍点近似は
$ f_(X^(‾)_n) (x) approx sqrt(frac(n, 2 pi K prime.double (hat(t)))) exp { - n I (x) } $
という形になる（正確な対象・正規化により係数は変わる）。さらに
$K^((3)) , K^((4)) , dots.h$ を使えば高次補正が得られる。

したがって、キュムラント母関数は
$ #box(stroke: black, inset: 3pt, [$ upright("CLT の精密化") quad upright("と") quad upright("大偏差・鞍点近似") $]) $
をつなぐ共通言語である。
]
