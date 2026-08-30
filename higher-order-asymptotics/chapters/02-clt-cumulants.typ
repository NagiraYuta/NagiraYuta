#let body = [
= 中心極限定理をキュムラントで見る
<中心極限定理をキュムラントで見る>
== 標準化和のキュムラント
<標準化和のキュムラント>
$X_1 , X_2 , dots.h$ を i.i.d.、
$ bb(E) [X_i] = 0 , #h(2em) "Var" (X_i) = 1 $ とする。標準化和
$ S_n = 1 / sqrt(n) sum_(i = 1)^n X_i $ を考える。

独立和の加法性とスケール則から
$ kappa_r (S_n) = n (1 / sqrt(n))^r kappa_r (X_1) = n^(1 - r \/ 2) kappa_r (X_1) . $
したがって $ kappa_1 (S_n) = 0 , #h(2em) kappa_2 (S_n) = 1 , $
一方、$r gt.eq 3$ について
$ kappa_r (S_n) = O (n^(- (r - 2) \/ 2)) arrow.r 0 . $ つまり CLT
は、#strong[標準化和の高次キュムラントが順番に消えていき、2次キュムラントだけが残る現象]として読める。

== 対数特性関数の展開
<対数特性関数の展開>
$X_1$ のキュムラントを $kappa_r$ と書く。特性関数の対数を $0$
の近傍で展開すると
$ log phi_X (u) = - u^2 / 2 + frac(kappa_3 (upright(i) u)^3, 3 !) + frac(kappa_4 (upright(i) u)^4, 4 !) + dots.h.c . $
$S_n$ の特性関数は $ phi_(S_n) (t) = { phi_X (t \/ sqrt(n)) }^n $ なので
$ log phi_(S_n) (t) & = n log phi_X (t \/ sqrt(n))\
 & = - t^2 / 2 + frac(kappa_3 (upright(i) t)^3, 6 sqrt(n)) + frac(kappa_4 (upright(i) t)^4, 24 n) + O (n^(- 3 \/ 2)) . $
指数を戻すと
$ phi_(S_n) (t) = e^(- t^2 \/ 2) #scale(x: 300%, y: 300%)[\[] 1 & + frac(kappa_3 (upright(i) t)^3, 6 sqrt(n))\
 & + 1 / n {frac(kappa_4 (upright(i) t)^4, 24) + frac(kappa_3^2 (upright(i) t)^6, 72)} + O (n^(- 3 \/ 2)) #scale(x: 300%, y: 300%)[\]] . $
最初の $e^(- t^2 \/ 2)$ が
CLT、その後ろの多項式が「正規分布からのズレ」である。

== CLT と Edgeworth の違い
<clt-と-edgeworth-の違い>
CLT は極限分布を与えるが、その誤差の形を与えない。Berry–Esseen 型評価は
$ sup_x lr(|F_n (x) - Phi (x)|) lt.eq frac(C bb(E) lr(|X|)^3, sqrt(n)) $
のように誤差の#strong[大きさ]を評価する。これに対して Edgeworth 展開は
$ F_n (x) - Phi (x) = 1 / sqrt(n) times upright("明示的関数") + 1 / n times upright("明示的関数") + dots.h.c $
として、誤差の#strong[形]まで近似する。

#block[
#strong[注意 2.1]. Edgeworth 展開は単なる Taylor
展開ではない。特性関数の局所展開を分布関数の一様近似へ移すには、非格子性や
Cramér 条件などの正則性が必要になる。格子分布では連続的な補正項だけでは
$o (n^(- 1 \/ 2))$
の一様誤差を一般に達成できず、周期的補正が必要になる。

]
]
