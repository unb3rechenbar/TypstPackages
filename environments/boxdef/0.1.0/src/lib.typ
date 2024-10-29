#let beweisbox(content) = block(
  fill: luma(250),
  width: 100%,
  height: auto,
  // stroke: 0.5pt + rgb("#002fa7"),
  radius: 5pt,
  inset: 10pt,
  breakable: true,
  [
    #block(
      below: -6pt,
      width: 100%,
      [*Beweis.*] + content
    )
    #align(right)[
      #move(dy: 2pt, 
        square(size: 8pt, stroke: (thickness: 0.5pt, paint: rgb("#002fa7")), fill: white)
      )
    ]
  ]
)

#let defcount = counter("defcount")
#let definitionsbox(title, content) = block[
  #defcount.step()
  #box(
    fill: white,
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    [
      *Definition #counter(heading).display()#defcount.display().* #title.

      #content
    ]
  )
]

#let satcount = counter("satcount")
#let satzbox(
  title,
  content
) = block[
  #satcount.step()
  #box(
    fill: luma(225),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    [
      *Satz #counter(heading).display()#satcount.display().* #title.

      #content
    ]
  )
]

#let corcount = counter("corcount")
#let korollarbox(
  title,
  content
) = block[
  #corcount.step()
  #box(
    fill: luma(240),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    [
      *Korollar #counter(heading).display()#corcount.display().* #title.

      #content
    ]
  )
]

#let propcount = counter("propcount")
#let propbox(
  title,
  content
) = block[
  #propcount.step()
  #box(
    fill: luma(240),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    [
      *Proposition #counter(heading).display()#propcount.display().* #title.

      #content
    ]
  )
]

// 9PKGLxW/2>OWl2|4

#let lemcount = counter("lemcount")
#let lemmabox(
  title,
  content
) = block[
  #lemcount.step()
  #box(
    fill: luma(240),
    width: 100%,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    radius: 5pt,
    [
      *Lemma #counter(heading).display()#lemcount.display().* #title.

      #content
    ]
  )
]

#let aufgabenbox(
  content
) = box(
  width: 100%,
  stroke: (top: (paint: black, dash: "loosely-dotted"), bottom: (paint: black, dash: "loosely-dotted")),
  inset: (left: 5pt, right: 10pt, bottom: 10pt, top: 10pt),
  par(leading: 0.65em, linebreaks: "optimized", text(size: 10pt, content))
)

#let afgbx(
  content
) = box(
  width: 100%,
  stroke:  (top: (paint: black, dash: "loosely-dotted"), bottom: (paint: black, dash: "loosely-dotted")),
  inset: (left: 5pt, right: 10pt, bottom: 10pt, top: 10pt),
  par(
    linebreaks: "optimized", 
    text(size: 10pt, 
      grid(
      columns: (auto, 1fr),
      column-gutter: 5pt,
      row-gutter: 8pt,
      // ..content.map(x => ([$->$],x)).flatten()
      ..content
    )
  ))
)

#let nafgbx(
  content
) = box(
  width: 100%,
  stroke:  (top: (paint: black, dash: "loosely-dotted"), bottom: (paint: black, dash: "loosely-dotted")),
  inset: (left: 5pt, right: 10pt, bottom: 10pt, top: 10pt),
  par(
    linebreaks: "optimized", 
    text(size: 10pt, 
      grid(
      columns: (auto, 1fr),
      column-gutter: 5pt,
      row-gutter: 8pt,
      // ..content.map(x => ([$->$],x)).flatten()
      ..content.map(x => ($->$, x)).flatten()
    )
  ))
)