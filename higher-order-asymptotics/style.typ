// Shared styling for the paged PDF and the HTML book.
#let book-title = [キュムラントから高次漸近統計へ]
#let book-subtitle = [Edgeworth 展開・高次精度・曲指数型分布族への導入]

#let pdf-style(body) = {
  set page(
    paper: "a4",
    margin: (top: 22mm, bottom: 24mm, left: 25mm, right: 25mm),
    numbering: "1",
    number-align: center + bottom,
  )
  set text(
    font: ("Noto Serif CJK JP", "Noto Serif JP", "New Computer Modern"),
    size: 10.5pt,
    lang: "ja",
  )
  set par(justify: true, leading: 0.72em, first-line-indent: 1em)
  set heading(numbering: "1.1")
  set block(
    inset: (x: 9pt, y: 7pt),
    radius: 2pt,
    fill: luma(97%),
    stroke: (left: 1.2pt + luma(65%)),
    above: 0.7em,
    below: 0.7em,
  )
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(0.5em)
    it
  }
  show heading.where(level: 2): it => {
    v(0.3em)
    it
  }
  body
}

#let title-page() = {
  align(center + horizon)[
    #text(size: 25pt, weight: "bold")[#book-title]
    #v(1.2em)
    #text(size: 14pt)[#book-subtitle]
    #v(3em)
    #text(size: 10pt)[大学院向け数理統計ノート]
    #v(0.6em)
    #text(size: 9pt)[2026年8月30日版 / Typst版]
  ]
}

#let web-style(title, body) = {
  set text(font: ("Noto Serif CJK JP", "Noto Serif JP", "serif"), lang: "ja")
  set par(leading: 0.75em)
  html.elem("style")[#text("""
    :root { color-scheme: light dark; }
    body { max-width: 860px; margin: 0 auto; padding: 2rem 1.2rem 5rem; line-height: 1.75; }
    main { min-width: 0; }
    h1, h2, h3 { line-height: 1.3; }
    nav.book-nav { display:flex; flex-wrap:wrap; gap:.8rem 1.2rem; border-bottom:1px solid #9995; padding-bottom:1rem; margin-bottom:2rem; }
    nav.book-nav a { text-decoration:none; }
    table { border-collapse: collapse; }
    td, th { padding:.35rem .55rem; border-bottom:1px solid #9995; }
    code { font-size:.92em; }
  """)]
  html.elem("main")[#body]
}
