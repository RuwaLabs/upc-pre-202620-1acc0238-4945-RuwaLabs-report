// Académico Estructurado v2 — Markdown → Typst → PDF
// Fuente uniforme Source Sans 3; títulos sin numeración automática.
#let palette = (
  ink: rgb("#243447"), muted: rgb("#62778b"),
  accent: rgb("#237db7"), accent-dark: rgb("#174e7c"),
  accent-soft: rgb("#dceffc"), accent-pale: rgb("#f4faff"),
  rule: rgb("#c9deec"), code-bg: rgb("#f0f6fa"),
)
#let tline = table.hline(stroke: 0.8pt + palette.rule)
#let fit-image(src, alt: "", width: auto, height: auto, fit: "contain") = context {
  let content = image(src, alt: alt, width: width, height: height, fit: fit)
  let measured = measure(content)
  if measured.height > 205mm or measured.width > 160mm {
    image(src, alt: alt,
      width: if measured.width > 160mm { 100% } else { width },
      height: if measured.height > 205mm { 205mm } else { height }, fit: "contain")
  } else { content }
}
#let callout(type: "info", title: none, body) = {
  let colors = if type == "warning" { (rgb("#a66c15"), rgb("#fff7e8")) }
    else if type == "danger" { (rgb("#a7384b"), rgb("#fff1f3")) }
    else if type == "success" { (rgb("#237e76"), rgb("#edf9f6")) }
    else { (palette.accent, palette.accent-soft) }
  block(width: 100%, fill: colors.at(1),
    stroke: (left: 3pt + colors.at(0)), radius: (right: 4pt),
    inset: (x: 12pt, y: 10pt), above: 11pt, below: 11pt)[
    #if title != none {
      text(size: 10pt, weight: "bold", fill: colors.at(0), title)
      v(4pt)
    }
    #body
  ]
}
#let cover(cfg) = {
  grid(columns: (18mm, 1fr), column-gutter: 13mm,
    rect(width: 18mm, height: 214mm, fill: palette.accent-dark, radius: 1pt),
    [
      #v(12mm)
      #text(size: 9pt, tracking: 1.2pt, fill: palette.muted,
        weight: "semibold", upper(cfg.institution))
      #v(4mm)
      #rect(width: 25mm, height: 2pt, fill: palette.accent)
      #v(28mm)
      #text(size: 25pt, weight: "bold", fill: palette.accent-dark,
        lang: cfg.lang, cfg.title)
      #v(7mm)
      #text(size: 12pt, fill: palette.muted, cfg.subtitle)
      #v(34mm)
      #line(length: 100%, stroke: 0.7pt + palette.rule)
      #v(7mm)
      #text(size: 11pt, weight: "semibold", cfg.authors.join(", "))
      #v(3mm)
      #text(size: 10pt, fill: palette.muted, cfg.course)
      #v(3mm)
      #text(size: 9.5pt, fill: palette.muted, cfg.date)
      #v(1fr)
      #text(size: 8pt, fill: palette.muted)[DOCUMENTO ACADÉMICO · MARKDOWN / TYPST]
    ],
  )
}
#let section-banner(title) = block(below: 15pt)[
  #text(size: 20pt, weight: "bold", fill: palette.accent-dark, title)
  #v(5pt)
  #line(length: 100%, stroke: 1.5pt + palette.accent)
]
#let toc-page(cfg) = { section-banner([Contenido]); outline(title: none, indent: auto, depth: 3) }
#let lof-page(cfg) = {
  section-banner([Figuras y tablas])
  text(size: 11pt, weight: "bold", fill: palette.accent-dark)[Figuras]
  v(4pt)
  outline(title: none, target: figure.where(kind: image), depth: 1)
  v(12pt)
  text(size: 11pt, weight: "bold", fill: palette.accent-dark)[Tablas]
  v(4pt)
  outline(title: none, target: figure.where(kind: table), depth: 1)
}
#let page-header(cfg) = context {
  set text(size: 8pt, fill: palette.muted)
  grid(columns: (1fr, auto), column-gutter: 10pt,
    [#cfg.course], align(right)[#cfg.title])
  v(4pt)
  line(length: 100%, stroke: 0.65pt + palette.rule)
}
#let page-footer(cfg) = context {
  line(length: 100%, stroke: 0.55pt + palette.rule)
  v(4pt)
  set text(size: 8pt, fill: palette.muted)
  grid(columns: (1fr, auto), [#cfg.institution],
    text(weight: "bold", fill: palette.accent-dark, counter(page).display()))
}
#let rules(cfg, body) = {
  set document(title: cfg.title, author: cfg.authors)
  set page(paper: cfg.page.size,
    margin: (top: cfg.page.top * 1mm, bottom: cfg.page.bottom * 1mm,
      left: cfg.page.left * 1mm, right: cfg.page.right * 1mm),
    header: page-header(cfg), footer: page-footer(cfg))
  set text(font: "Source Sans 3", size: cfg.page.fontsize * 1pt,
    lang: cfg.lang, hyphenate: true, fill: palette.ink)
  set par(justify: true, leading: 0.9em, spacing: 1.25em)
  set footnote(numbering: "1")
  show footnote.entry: set text(size: 8.7pt, fill: palette.muted)
  set heading(numbering: none)
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(above: 0pt, below: 16pt, sticky: true)[
      #grid(columns: (11mm, 1fr), column-gutter: 10pt,
        align: horizon,
        rect(width: 11mm, height: 11mm, fill: palette.accent, radius: 1pt),
        text(size: 19pt, weight: "bold", fill: palette.accent-dark, it.body))
      #v(6pt)
      #line(length: 100%, stroke: 1.25pt + palette.accent)
    ]
  }
  show heading.where(level: 2): it => block(above: 18pt, below: 8pt, sticky: true)[
    #set text(size: 13pt, weight: "semibold", fill: palette.accent-dark)
    #it.body
  ]
  show heading.where(level: 3): it => block(above: 14pt, below: 6pt, sticky: true)[
    #set text(size: 11.5pt, weight: "semibold", fill: palette.accent)
    #it.body
  ]
  show heading.where(level: 4): it => block(above: 12pt, below: 5pt, sticky: true)[
    #set text(size: 10.7pt, weight: "semibold", fill: palette.accent-dark)
    #it.body
  ]
  show heading.where(level: 5): it => block(above: 10pt, below: 4pt, sticky: true)[
    #set text(size: 10pt, weight: "semibold", fill: palette.accent-dark)
    #it.body
  ]
  show heading.where(level: 6): it => block(above: 9pt, below: 4pt, sticky: true)[
    #set text(size: 9.5pt, weight: "semibold", fill: palette.muted)
    #it.body
  ]
  show figure.where(kind: image): set figure(supplement: [Figura], numbering: "1", gap: 0.7em)
  show figure.where(kind: table): set figure(supplement: [Tabla], numbering: "1", gap: 0.7em)
  show figure.caption: set text(size: 9pt, fill: palette.muted)
  show figure: set block(breakable: false, above: 12pt, below: 12pt)
  show table: it => {
    set table(inset: (x: 8pt, y: 7pt), stroke: 0.45pt + palette.rule)
    show table.cell.where(y: 0): set table.cell(fill: palette.accent-soft)
    show table.cell.where(y: 0): set text(size: 9.5pt, weight: "bold", fill: palette.accent-dark)
    it
  }
  show outline.entry: set block(above: 0.4em, below: 0em)
  show outline.entry.where(level: 1): set text(weight: "semibold", fill: palette.accent-dark)
  show raw.where(block: true): it => block(width: 100%, fill: palette.code-bg,
    stroke: (left: 2pt + palette.accent), radius: (right: 3pt),
    inset: 11pt, above: 11pt, below: 11pt)[
    #set text(font: "Source Sans 3", size: 9pt)
    #it
  ]
  show raw.where(block: false): it => box(fill: palette.code-bg,
    radius: 2pt, inset: (x: 3pt, y: 1pt),
    text(font: "Source Sans 3", size: 9pt, it))
  show quote.where(block: true): it => block(width: 100%,
    stroke: (left: 2.5pt + palette.accent-dark),
    fill: palette.accent-pale,
    inset: (left: 12pt, right: 10pt, y: 9pt),
    above: 11pt, below: 11pt)[
    #set text(weight: "regular", style: "normal", fill: palette.ink)
    #it
  ]
  show link: it => underline(stroke: 0.6pt + palette.accent, offset: 2pt,
    text(fill: palette.accent, it))
  set list(spacing: 0.65em)
  set enum(spacing: 0.65em)
  body
}
