#import "style.typ": pdf-style, title-page
#import "chapters.typ": chapters

#set document(
  title: "キュムラントから高次漸近統計へ",
  author: "ChatGPT 作成ノート",
  date: datetime(year: 2026, month: 8, day: 30),
)

#show: pdf-style
#title-page()
#pagebreak()
#outline(title: [目次], depth: 2)
#pagebreak()

#for chapter in chapters {
  chapter.body
}
