# キュムラントから高次漸近統計へ

キュムラント母関数から Edgeworth 展開、高次漸近理論、曲指数型分布族・情報幾何への接続までをまとめた日本語ノートです。

## ビルド

Typst 0.15.1 を想定しています。

```bash
typst compile book.typ book.pdf
```

章ごとの HTML と PDF を同時に出力する場合は、Typst 0.15 の実験的 bundle / HTML 機能を使います。

```bash
typst compile site.typ dist/ --format bundle --features html,bundle
```

`site.typ` は `index.html`、章ごとの HTML、`book.pdf` を同じ bundle に出力します。

## ファイル

- `chapters.typ`: 章レジストリ
- `chapters/*.typ`: 各章本文
- `style.typ`: PDF / HTML 共通スタイル
- `book.typ`: PDF 用エントリーポイント
- `site.typ`: HTML book + PDF bundle 用エントリーポイント
