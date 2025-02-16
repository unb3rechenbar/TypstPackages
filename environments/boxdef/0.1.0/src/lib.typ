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



#let resetcounters() = {
  counter("globalcount").update(0)
  counter("satcount").update(0)
  counter("satglobalcount").update(0)
  counter("corcount").update(0)
  counter("propcount").update(0)
  counter("lemcount").update(0)
}
#let globalcount = counter("globalcount")


// #let defref(lbl) = ref(label(lbl), supplement: [Def. #context{counter(heading).display("1.1")}.#h(-4pt)])
#let defref(lbl) = ref(label(lbl), supplement: [Def. #h(-4pt)])

#let definitionsbox(title, content) = block[
  #globalcount.step()
  #box(
    fill: white,
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Definition.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Definition]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let satref(lbl) = ref(label(lbl), supplement: [Satz #context{counter(heading).get().at(0)}.#h(-4pt)])

#let satcount = counter("satcount")
#let satzbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: luma(225),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Satz.* #title.
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

#let satglobalcount = counter("satglobalcount")
#let satzdefbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: luma(225),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Satz und Definition.* #title.
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
  #globalcount.step()
  #box(
    fill: luma(240),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Korollar.* #title.
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
  #globalcount.step()
  #box(
    fill: luma(240),
    width: 100%,
    stroke: black + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Proposition.* #title.
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
  #globalcount.step()
  #box(
    fill: white,
    width: 100%,
    // inset: (left: 20pt, right: 20pt, bottom: 20pt, top: 17pt),
    // radius: 5pt,
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Lemma.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Lemma]
      )
      #label(title.replace(" ", "-"))
      
      #content
    ]
  )
]



// >==================================================================================< //
//
// Boxen für Aufgaben und Fragen
//
// >==================================================================================< //

#let aufgcounter = counter("aufgcounter")

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
      column-gutter: 3pt,
      row-gutter: 8pt,
      // ..content.map(x => ([$->$],x)).flatten()
      ..content.map(x => ([$square_(#context{aufgcounter.step()}#context{aufgcounter.display("1")})$], x)).flatten() 
    )
  ))
)

#let deflist(
  content
) = align(right, (block(width: 98%, grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 8pt,
  align: (center, left),
  // ..content.map(x => ([$->$],x)).flatten()
  ..content
))))

#let worddeflist(
  content
) = align(right, (block(width: 98%, grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 8pt,
  align: (center, left),
  // ..content.map(x => ([$->$],x)).flatten()
  ..content
))))

// >==================================================================================< //
//
// Boxen für Kontextualisierung
//
// >==================================================================================< //

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




// >==================================================================================< //
//
//  Physikalisch und mathematisch angepasste Boxen (Koloriert)
//
// >==================================================================================< //

#let phybembox(
  title,
  content
) = block(
  breakable: true,
  width: 100%,
  [  
    #globalcount.step()
    #text(fill: orange.mix(red), [*#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Bemerkung*]) (#title).
    #content
    #v(1em)
  ]
)


#let mabembox(
  title,
  content
) = block(
  breakable: true,
  width: 100%,
  [
    #globalcount.step()
    #text(fill: rgb("#002fa7"), [*#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Bemerkung*]) (#title). 
    #content
    #v(1em)
  ]
)

#let phybspbox(
  title,
  content
) = block(
  breakable: true,
  width: 100%,
  [
    #globalcount.step()
    #text(fill: orange.mix(red), [*#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Beispiel*]) (#title).
    #content
    #v(1em)
  ]
)

#let mabspbox(
  title,
  content
) = block(
  breakable: true,
  width: 100%,
  [
    #globalcount.step()
    #text(fill: rgb("#002fa7"), [*#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Beispiel*]) (#title). 
    #content
    #v(1em)
  ]
)



#let physatzbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: orange.mix(red).transparentize(90%),
    width: 100%,
    stroke: orange.mix(red) + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Satz.* #title.
          ]
        ],
        kind: "boxhead", supplement: [Satz]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
  #v(1em)
]




#let masatzbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: rgb("#002fa7").transparentize(90%),
    width: 100%,
    stroke: rgb("#002fa7") + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Satz.* #title.
          ]
        ],
        kind: "boxhead", supplement: [Satz]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let physatzdefbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: orange.mix(red).transparentize(90%),
    width: 100%,
    stroke: orange.mix(red) + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Satz und Definition.* #title.
          ]
        ],
        kind: "boxhead", supplement: [Satz und Def.]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]

#let masatzdefbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: rgb("#002fa7").transparentize(90%),
    width: 100%,
    stroke: rgb("#002fa7") + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Satz und Definition.* #title.
          ]
        ],
        kind: "boxhead", supplement: [Satz und Def.]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let mlem(
  content
) = block[
  #globalcount.step()
  #box(
    fill: white,
    width: 100%,
    [
      *#text(fill: rgb("#002fa7"), [#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Lemma.])*
      #content
    ]
  )
]

#let plem(
  content
) = block[
  #globalcount.step()
  #box(
    fill: white,
    width: 100%,
    [
      *#text(fill: orange.mix(red), [#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Lemma.])*
      #content
    ]
  )
]

#let mcor(
  content
) = block[
  #globalcount.step()
  #box(
    fill: white,
    width: 100%,
    [
      *#text(fill: rgb("#002fa7"), [#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Korollar.])*
      #content
    ]
  )
]

#let mcorbox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: rgb("#002fa7").transparentize(90%),
    width: 100%,
    stroke: rgb("#002fa7") + 0.5pt,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#text(fill: rgb("#002fa7"), [#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Korollar.])* #title.
          ]
        ],
        kind: "boxhead", supplement: [Korollar]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]


#let pcor(
  content
) = block[
  #globalcount.step()
  #box(
    fill: white,
    width: 100%,
    [
      *#text(fill: orange.mix(red), [#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Korollar.])*
      #content
    ]
  )
]


#let malemmabox(
  title,
  content
) = block[
  #globalcount.step()
  #box(
    fill: rgb("#002fa7").transparentize(90%),
    width: 100%,
    inset: (left: 15pt, right: 15pt, bottom: 17pt, top: 15pt),
    radius: 5pt,
    [
      #figure(
        block(width:100%)[
          #align(left)[
            *#context{counter(heading).get().at(0)}.#context{globalcount.display("1")} Lemma.* #title.
          ]
        ], 
        kind: "boxhead", supplement: [Lemma]
      )
      #label(title.replace(" ", "-"))

      #content
    ]
  )
]

