#let body = [
= 分位点補正と正規化変換
<分位点補正と正規化変換>
== Cornish–Fisher 展開
<cornishfisher-展開>
Edgeworth 展開が分布関数を補正するのに対し、Cornish–Fisher
展開は分位点を補正する。$z_alpha = Phi^(- 1) (alpha)$ とし、$S_n$ の
$alpha$ 分位点を $q_(n , alpha)$ とする。

前章の Edgeworth 展開を逆に解くと、一次では
$ q_(n , alpha) = z_alpha + frac(kappa_3, 6 sqrt(n)) (z_alpha^2 - 1) + O (n^(- 1)) . $
二次まで書けば典型的には
$ q_(n , alpha) = z_alpha & + frac(kappa_3, 6 sqrt(n)) (z_alpha^2 - 1)\
 & + 1 / n [kappa_4 / 24 (z_alpha^3 - 3 z_alpha) - kappa_3^2 / 36 (2 z_alpha^3 - 5 z_alpha)] + o (n^(- 1)) . $
これにより、歪度・尖度を使って正規分位点を有限標本向けに補正できる。

== 正規化変換という考え方
<正規化変換という考え方>
別の発想は、統計量 $T_n$ 自体を
$ G_n (T_n) = T_n + n^(- 1 \/ 2) a (T_n) + n^(- 1) b (T_n) + dots.h.c $
と変換し、変換後の Edgeworth
補正を消すことである。例えば、もとの分布関数が
$ bb(P) (T_n lt.eq x) = Phi (x) + n^(- 1 \/ 2) p_1 (x) phi.alt (x) + O (n^(- 1)) $
なら、適切な $a$ を選び
$ bb(P) (G_n (T_n) lt.eq x) = Phi (x) + O (n^(- 1)) $
とできる場合がある。

これは「極限分布を正規にする」という一次漸近論より一段強く、#strong[正規近似の誤差次数そのものを改善する]ことを狙う。

== Bartlett 補正との共通思想
<bartlett-補正との共通思想>
尤度比統計量 $W$ が一次近似で $chi_q^2$ に従うとき、有限標本で
$ bb(E) [W] = q (1 + b / n + O (n^(- 2))) $ となる場合がある。そこで
$ W_B = frac(W, 1 + b \/ n) $ のように補正すると、$chi^2$
近似の誤差を高次で改善できる。この種の Bartlett
補正も、「高次項を計算し、それを打ち消す変換を作る」という意味で同じ発想に属する。

#block[
#strong[注意 4.1]. 正規化変換、Bartlett 補正、Cornish–Fisher
補正は対象が異なるが、いずれも一次極限定理の後に残る
$n^(- 1 \/ 2) , n^(- 1) , dots.h$ の項を利用する。

]
]
