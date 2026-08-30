#let body = [
= 学習のためのまとめ
<学習のためのまとめ>
== 何を理解すればよいか
<何を理解すればよいか>
このノートの核心は次の5点に集約できる。

+ #strong[キュムラントは独立和に対して加法的]である。

+ 標準化和では $r$ 次キュムラントが $n^(1 - r \/ 2)$ で縮み、これが CLT
  と高次補正の次数を決める。

+ Edgeworth 展開は「正規近似誤差の大きさ」だけでなく「誤差の形」を
  $n^(- 1 \/ 2)$ の級数として与える。

+ Student 化、bootstrap、Bartlett
  補正、高次有効性は、一次極限定理では見えない高次項を利用する。

+ 曲指数型分布族では、同じ高次項がキュムラント計算と情報幾何的曲率の双方から記述される。

== 推奨する次の順序
<推奨する次の順序>
実際に専門書へ進むなら、次の順が比較的自然である。

+ 本ノートの第1–3章：キュムラントと Edgeworth の計算を自力で再現する。

+ 前園宜彦『統計的推測の漸近理論』：ノンパラメトリック設定、Student
  化、正規化変換、bootstrap を見る。

+ Hall, #emph[The Bootstrap and Edgeworth Expansion]：Edgeworth と
  bootstrap の高次精度を体系化する。

+ Bhattacharya–Rao, #emph[Normal Approximation and Asymptotic
  Expansions]：Fourier 解析による厳密な一般論へ進む。

+ Amari, #emph[Differential-Geometrical Methods in
  Statistics]：曲指数型分布族、高次漸近推論、情報幾何の接続を見る。

== van der Vaart との位置関係
<van-der-vaart-との位置関係>
van der Vaart の #emph[Asymptotic Statistics]
が主に扱うのは、局所漸近正規性、contiguity、漸近有効性、M/Z
推定、経験過程などの#strong[一次の現代的漸近理論]である。本ノートはそれに代わるものではなく、むしろ
$ upright("一次漸近理論を理解した後、有限標本誤差の次の項へ進む") $
ための補助線である。
]
