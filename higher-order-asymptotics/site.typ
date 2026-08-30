#import "style.typ": web-style, pdf-style, title-page
#import "chapters.typ": chapters

#document("index.html", title: [キュムラントから高次漸近統計へ])[
  #web-style([キュムラントから高次漸近統計へ])[
    = キュムラントから高次漸近統計へ
    Edgeworth 展開・高次精度・曲指数型分布族への導入

    #outline(title: [目次], depth: 2)

    #for chapter in chapters {
      chapter.body
    }

    #link("book.pdf")[PDF版を開く]
  ]
]

#document("book.pdf", title: [キュムラントから高次漸近統計へ])[
  #show: pdf-style
  #title-page()
  #pagebreak()
  #outline(title: [目次], depth: 2)
  #pagebreak()
  #for chapter in chapters { chapter.body }
]
