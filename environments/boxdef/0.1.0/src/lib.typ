#let beweisbox(
  fill: luma(250),
  width: 100%,
  height: auto,
  stroke: (left: 2pt + rgb("#002fa7")),
  inset: (left: 10pt, right: 10pt, bottom: 10pt, top: 10pt),
  content
) = block(
  fill: fill,
  width: width,
  height: height,
  stroke: stroke,
  inset: inset,
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
#let definitionsbox(
  fill: white,
  width: 100%,
  height: auto,
  stroke: black + 0.5pt,
  inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
  title,
  content
) = block[
  #defcount.step()
  #box(
    fill: fill,
    width: width,
    height: height,
    stroke: stroke,
    inset: inset,
    [
      *Definition #counter(heading).display()#defcount.display().* #title.

      #content
    ]
  )
]

#let satcount = counter("satcount")
#let satzbox(
  fill: luma(225),
  width: 100%,
  height: auto,
  stroke: black + 0.5pt,
  inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
  title,
  content
) = block[
  #satcount.step()
  #box(
    fill: fill,
    width: width,
    height: height,
    stroke: stroke,
    inset: inset,
    [
      *Satz #counter(heading).display()#satcount.display().* #title.

      #content
    ]
  )
]

#let corcount = counter("corcount")
#let korollarbox(
  fill: luma(240),
  width: 100%,
  height: auto,
  stroke: black + 0.5pt,
  inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
  title,
  content
) = block[
  #corcount.step()
  #box(
    fill: fill,
    width: width,
    height: height,
    stroke: stroke,
    inset: inset,
    [
      *Korollar #counter(heading).display()#corcount.display().* #title.

      #content
    ]
  )
]

// 9PKGLxW/2>OWl2|4

#let lemcount = counter("lemcount")
#let lemmabox(
  fill: luma(240),
  width: 100%,
  height: auto,
  inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
  title,
  content
) = block[
  #lemcount.step()
  #box(
    fill: fill,
    width: width,
    height: height,
    inset: inset,
    radius: 5pt,
    [
      *Lemma #counter(heading).display()#lemcount.display().* #title.

      #content
    ]
  )
]

#let aufgabenbox(
  width: 100%,
  height: auto,
  stroke: (top: (paint: black, dash: "loosely-dotted"), bottom: (paint: black, dash: "loosely-dotted")),
  inset: (left: 5pt, right: 10pt, bottom: 10pt, top: 10pt),
  content
) = box(
  width: width,
  height: height,
  stroke: stroke,
  inset: inset,
  par(leading: 0.65em, linebreaks: "optimized", text(size: 10pt, content))
)

#let afgbx(
  width: 100%,
  height: auto,
  stroke: (top: (paint: black, dash: "loosely-dotted"), bottom: (paint: black, dash: "loosely-dotted")),
  inset: (left: 5pt, right: 10pt, bottom: 10pt, top: 10pt),
  content
) = box(
  width: width,
  height: height,
  stroke: stroke,
  inset: inset,
  par(
    linebreaks: "optimized", 
    text(size: 10pt, 
      grid(
      columns: (auto, 1fr),
      column-gutter: 5pt,
      row-gutter: 8pt,
      ..content
    )
  ))
  
)