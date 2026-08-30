// Chapter registry. Each chapter body lives in chapters/*.typ.
#import "chapters/00-purpose.typ": body as ch00
#import "chapters/01-cumulants.typ": body as ch01
#import "chapters/02-clt-cumulants.typ": body as ch02
#import "chapters/03-edgeworth.typ": body as ch03
#import "chapters/04-quantiles-normalization.typ": body as ch04
#import "chapters/05-studentization-bootstrap.typ": body as ch05
#import "chapters/06-higher-order-efficiency.typ": body as ch06
#import "chapters/07-curved-exponential-geometry.typ": body as ch07
#import "chapters/08-large-deviations-saddlepoint.typ": body as ch08
#import "chapters/09-study-map.typ": body as ch09
#import "chapters/10-formulas.typ": body as ch10
#import "chapters/11-glossary.typ": body as ch11
#import "chapters/12-references.typ": body as ch12
#import "chapters/13-reading-guide.typ": body as ch13

#let chapters = (
  (slug: "00-purpose", title: "このノートの目的", body: ch00),
  (slug: "01-cumulants", title: "モーメント母関数・特性関数・キュムラント", body: ch01),
  (slug: "02-clt-cumulants", title: "中心極限定理をキュムラントで見る", body: ch02),
  (slug: "03-edgeworth", title: "Hermite 多項式と Edgeworth 展開", body: ch03),
  (slug: "04-quantiles-normalization", title: "分位点補正と正規化変換", body: ch04),
  (slug: "05-studentization-bootstrap", title: "Student 化と bootstrap の高次精度", body: ch05),
  (slug: "06-higher-order-efficiency", title: "高次漸近理論と高次有効性", body: ch06),
  (slug: "07-curved-exponential-geometry", title: "指数型分布族・曲指数型分布族・情報幾何", body: ch07),
  (slug: "08-large-deviations-saddlepoint", title: "大偏差・指数傾斜・鞍点近似との接続", body: ch08),
  (slug: "09-study-map", title: "学習のためのまとめ", body: ch09),
  (slug: "10-formulas", title: "計算公式集", body: ch10),
  (slug: "11-glossary", title: "用語対応", body: ch11),
  (slug: "12-references", title: "参考文献", body: ch12),
  (slug: "13-reading-guide", title: "文献の使い分けについて", body: ch13),
)
