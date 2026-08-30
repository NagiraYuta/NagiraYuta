#let body = [
= 指数型分布族・曲指数型分布族・情報幾何
<指数型分布族曲指数型分布族情報幾何>
== 指数型分布族
<指数型分布族>
正則な $m$ 次元指数型分布族を
$ p (x ; theta) = exp { theta^i F_i (x) - psi (theta) } h (x) $
と書く（Einstein の総和規約を意識して上付き添字を用いた）。対数分配関数
$psi$ は
$ frac(diff psi, diff theta^i) = bb(E)_theta [F_i (X)] , #h(2em) frac(diff^2 psi, diff theta^i diff theta^j) = "Cov"_theta (F_i , F_j) $
を満たす。したがって Fisher 情報計量は
$ g_(i j) (theta) = diff_i diff_j psi (theta) $ となる。

さらに3階微分 $ diff_i diff_j diff_k psi (theta) $ は十分統計量の3次
joint cumulant
である。つまり、指数型分布族の幾何学では#strong[対数分配関数の高階微分そのものがキュムラントテンソル]になる。

== 曲指数型分布族
<曲指数型分布族>
フルな指数型分布族の自然母数 $theta in bb(R)^m$ が、低次元母数
$u in bb(R)^q$ $(q < m)$ の滑らかな写像 $ theta = theta (u) $
で制約されるとき、得られる部分モデルを曲指数型分布族と呼ぶ。幾何学的には、$m$
次元統計多様体の中の $q$ 次元部分多様体である。

一次漸近理論では、真の母数近傍を $n^(- 1 \/ 2)$
スケールで拡大すると局所的に接平面が支配的になり、「曲がり」は消える。しかし二次以上まで見ると、部分多様体が周囲の指数型分布族の中でどのように曲がっているかが推論誤差に現れる。

== 統計的曲率
<統計的曲率>
Efron の statistical curvature や Amari の $alpha$-connection
は、この高次情報を幾何学的に記述する。直観的には、
$ upright("一次情報") = upright("接空間・Fisher 計量") , $
$ upright("高次情報") = upright("接続・曲率・高次キュムラント") $
という対応がある。

ここで重要なのは「情報幾何を学べば Edgeworth
展開が自動的に出る」ということではない。より正確には、#strong[曲指数型分布族の高次統計的推論を行うと、Edgeworth
展開による解析的計算と、曲率による幾何学的記述が同じ高次項を別の角度から扱う]。

== なぜ甘利の高次理論で Edgeworth が出るのか
<なぜ甘利の高次理論で-edgeworth-が出るのか>
Amari の高次漸近理論では、曲指数型分布族における推定・検定を
$n^(- 1 \/ 2)$
の高次まで展開する。そのためには標本平均型の統計量の分布を正規分布以上の精度で近似する必要があり、Edgeworth
展開が自然に入る。

概念的には
$ #box(stroke: black, inset: 3pt, [$ upright("指数型分布族の対数分配関数")\
arrow.b\
upright("2階微分 = Fisher 情報")\
upright("3階以上 = 高次キュムラント")\
arrow.b\
upright("Edgeworth による高次分布近似")\
arrow.b\
upright("曲率・接続による幾何学的整理")\
arrow.b\
upright("高次有効性・高次検出力") $]) $ という流れで理解できる。

#block[
#strong[注意 7.1]. 情報幾何の入門書の多くは、Fisher
計量、双対接続、指数族・混合族などの幾何構造を主眼とするため、Edgeworth
展開の解析的導出を詳しく扱わない。高次漸近統計との接続は、Amari \(1985)
のような専門的文献で明示的になる。

]
]
