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

#let beweisvon(title, content) = block(
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
      [*Beweis #title.*] + content
    )
    #align(right)[
      #move(dy: 2pt, 
        square(size: 8pt, stroke: (thickness: 0.5pt, paint: rgb("#002fa7")), fill: white)
      )
    ]
  ]
)

#let ideabox(content) = block(
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
      [*Idea.*] + content
    )
    #align(right)[
      #move(dy: 2pt, 
        rotate(45deg,square(size: 8pt, stroke: (thickness: 0.5pt, paint: rgb("#002fa7")), fill: white))
      )
    ]
  ]
)

#let defref(lbl) = ref(label(lbl), supplement: [Def. #context{counter(heading).display("1.1")}.#h(-4pt)])

#let defcount = counter("defcount")
#let definitionsbox(title, content) = block[
  #defcount.step()
  #box(
    fill: white,
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *Definition #context{counter(heading).display("1.1")}.#context{defcount.display("1")}.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Definition]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let satref(lbl) = ref(label(lbl), supplement: [Satz #context{counter(heading).display("1.1")}.#h(-4pt)])

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
      #figure(
        block(width:100%)[
          #align(left)[
            *Satz #context{counter(heading).display("1.1")}.#context{satcount.display("1")}.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Satz]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let satzdefref(lbl) = ref(label(lbl), supplement: [Satz und Def. #context{counter(heading).display("1.1")}.#h(-4pt)])

#let satdefcount = counter("satdefcount")
#let satzdefbox(
  title,
  content
) = block[
  #satdefcount.step()
  #box(
    fill: luma(225),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *Satz und Definition #context{counter(heading).display("1.1")}.#context{satdefcount.display("1")}.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Satz und Def.]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let korref(lbl) = ref(label(lbl), supplement: [Korollar #context{counter(heading).display("1.1")}.#h(-4pt)])

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
      #figure(
        block(width:100%)[
          #align(left)[
            *Korollar #context{counter(heading).display("1.1")}.#context{corcount.display("1")}.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Korollar]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let propref(lbl) = ref(label(lbl), supplement: [Proposition #context{counter(heading).display("1.1")}.#h(-4pt)])

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
      #figure(
        block(width:100%)[
          #align(left)[
            *Proposition #context{counter(heading).display("1.1")}.#context{propcount.display("1")}.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Proposition]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let lemref(lbl) = ref(label(lbl), supplement: [Lemma #context{counter(heading).display("1.1")}.#h(-4pt)])

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
      #figure(
        block(width:100%)[
          #align(left)[
            *Lemma #context{counter(heading).display("1.1")}.#context{lemcount.display("1")}.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Lemma]
      )
      #label(title.replace(" ", "-"))

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
      ..content.map(x => ($ballot$, x)).flatten() 
    )
  ))
)



#let worumgehts(
  content
) = box(
  fill: green.transparentize(90%),
  stroke: green + 0.5pt,
  inset: 10pt,
  width: 100%,
  radius: 5pt
)[
  *Worum geht's?*

  #content
]