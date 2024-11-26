
#let cv(name, doc) = {
  set page(
    paper: "us-letter",
    margin: (top: 5em, left: 4em, right: 4em)
  )
  
  set text(
    size: 11pt,
  )
  
  show heading.where(
    level: 1
  ): it => block(width: 100%)[
    #set align(left)
    #set text(13pt, weight: "regular")
    #smallcaps(it.body)
  ]

  show link: it => {
    text(it, fill: rgb("#0E3275"))
  }
  
  set par(justify: true)
  
  place(
    top + left,
    float: true,
    scope: "parent",
    clearance: 1.5em,
  )[
    #align(left, text(20pt)[*#name*])
    #v(-1em)
    #line(length: 100%, stroke: 0.5pt)
  ]
  
  doc
}


#let section(header, body) = grid(
  columns: (1fr, 5fr),
  inset: 0.1em,
  heading(align(left, header)),
  body
)