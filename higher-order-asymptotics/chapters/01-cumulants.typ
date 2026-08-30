#let body = [
= モーメント母関数・特性関数・キュムラント
<モーメント母関数特性関数キュムラント>
== 三つの生成装置
<三つの生成装置>
確率変数 $X$ に対して、モーメント母関数（mgf）を
$ M_X (t) = bb(E) [e^(t X)] $ と定義する。$t = 0$
の近傍で有限であれば、形式的には
$ M_X (t) = 1 + mu prime_1 t + frac(mu prime_2, 2 !) t^2 + frac(mu prime_3, 3 !) t^3 + dots.h.c , #h(2em) mu prime_r = bb(E) [X^r] $
であり、微分によってモーメントを生成する。

ただし mgf は常に存在するとは限らない。この欠点を回避するのが特性関数
$ phi_X (t) = bb(E) [e^(upright(i) t X)] , #h(2em) t in bb(R) $
である。$lr(|e^(upright(i) t X)|) = 1$
なので、特性関数はすべての確率分布について存在する。

#block[
#strong[定義 1.1] \(キュムラント母関数). mgf が $0$
の近傍で有限であるとき、 $ K_X (t) = log M_X (t) $
をキュムラント母関数（cumulant generating function; cgf）と呼ぶ。展開
$ K_X (t) = sum_(r = 1)^oo kappa_r frac(t^r, r !) $ の係数
$kappa_r = K_X^((r)) (0)$ を $r$ 次キュムラントという。

]
mgf が存在しない場合でも、特性関数の $0$ 近傍で適切に対数を取り、
$ log phi_X (t) = sum_(r gt.eq 1) kappa_r frac((upright(i) t)^r, r !) $
と扱える範囲では同じキュムラントが現れる。Edgeworth
展開の導出では、実際にはこちらの特性関数表示が本質的である。

== 最初の四つのキュムラント
<最初の四つのキュムラント>
原点まわりのモーメントを $mu prime_r = bb(E) [X^r]$、中心モーメントを
$mu_r = bb(E) [(X - bb(E) X)^r]$ とする。最初のキュムラントは
$ kappa_1 & = bb(E) [X] ,\
kappa_2 & = "Var" (X) ,\
kappa_3 & = mu_3 ,\
kappa_4 & = mu_4 - 3 mu_2^2 . $ したがって、標準化された変数
$Z = (X - mu) \/ sigma$ では
$ kappa_3 (Z) = mu_3 / sigma^3 = : gamma_1 , #h(2em) kappa_4 (Z) = mu_4 / sigma^4 - 3 = : gamma_2 . $
$gamma_1$ は歪度、$gamma_2$ は超過尖度である。

重要なのは、4次キュムラントが単なる4次モーメントではなく、#strong[ガウス分布で説明される組合せを差し引いた量]だということである。正規分布では3次以上のキュムラントはすべて0になる。

== キュムラントの代数
<キュムラントの代数>
#block[
#strong[命題 1.2] \(アフィン変換). #emph[$Y = a X + b$ とすると、
$ kappa_1 (Y) = a kappa_1 (X) + b , #h(2em) kappa_r (Y) = a^r kappa_r (X) quad (r gt.eq 2) . $]

]
#block[
#emph[Proof.] $K_Y (t) = log bb(E) [e^(t (a X + b))] = b t + K_X (a t)$
を微分すればよい。~◻

]
#block[
#strong[命題 1.3] \(独立和に対する加法性). #emph[$X , Y$ が独立なら、
$ kappa_r (X + Y) = kappa_r (X) + kappa_r (Y) , #h(2em) r gt.eq 1 . $]

]
#block[
#emph[Proof.] 独立性から $M_(X + Y) (t) = M_X (t) M_Y (t)$。対数を取れば
$K_(X + Y) = K_X + K_Y$ となる。~◻

]
この加法性が、モーメントよりキュムラントが漸近展開に適している最大の理由である。

== 代表的な分布
<代表的な分布>
#block[
#strong[例 1.4] \(正規分布). $X tilde.op cal(N) (mu , sigma^2)$ なら
$ K_X (t) = mu t + frac(sigma^2 t^2, 2) . $ したがって
$kappa_1 = mu , kappa_2 = sigma^2$ で、$r gt.eq 3$ では $kappa_r = 0$。

]
#block[
#strong[例 1.5] \(Poisson 分布). $X tilde.op upright(P o i s) (lambda)$
なら $ K_X (t) = lambda (e^t - 1) , $ ゆえにすべての $r gt.eq 1$
について $kappa_r = lambda$ である。

]
#block[
#strong[例 1.6] \(指数分布). 平均1の指数分布では
$M_X (t) = (1 - t)^(- 1)$ $(t < 1)$ なので
$ K_X (t) = - log (1 - t) = sum_(r gt.eq 1) t^r / r . $ したがって
$ kappa_r = (r - 1) ! . $ 中心化・標準化すると
$kappa_3 = 2 , kappa_4 = 6$ が得られる。後で Edgeworth
展開の具体例に用いる。

]
== モーメントとキュムラントの一般関係
<モーメントとキュムラントの一般関係>
モーメントとキュムラントの変換は Bell 多項式で記述できる。低次数では
$ mu prime_1 & = kappa_1 ,\
mu prime_2 & = kappa_2 + kappa_1^2 ,\
mu prime_3 & = kappa_3 + 3 kappa_2 kappa_1 + kappa_1^3 ,\
mu prime_4 & = kappa_4 + 4 kappa_3 kappa_1 + 3 kappa_2^2 + 6 kappa_2 kappa_1^2 + kappa_1^4 . $
組合せ論的には「集合分割」が背後にある。高次展開ではこの構造が不可避になるため、多変量・高次の計算には
Bell 多項式を用いるのが自然である。

== 多変量キュムラント
<多変量キュムラント>
$X in bb(R)^d$ に対し
$ K_X (t) = log bb(E) [e^(t^tack.b X)] , #h(2em) t in bb(R)^d $
とする。多重添字 $i_1 , dots.h , i_r$ に対して
$ kappa_(i_1 dots.h.c i_r) = frac(diff^r K_X (t), diff t_(i_1) dots.h.c diff t_(i_r))\|_(t = 0) $
が多変量キュムラントである。2次では共分散行列、3次以上では高次依存構造を表すテンソルになる。曲指数型分布族や多変量
Edgeworth 展開ではこのテンソル構造が重要になる。

#block[
#strong[演習 1.1]. $X tilde.op upright(B e r n o u l l i) (p)$ について
$K_X (t)$ を求め、$kappa_1 , dots.h , kappa_4$ を計算せよ。

]
]
