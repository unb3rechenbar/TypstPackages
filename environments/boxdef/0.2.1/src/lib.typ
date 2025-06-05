#let mathblue = rgb("#002fa7")
// #let phycol = mathblue.rotate(-230deg)
// #let phycol = rgb("#ff0000").rotate(10deg)
// #let phycol = rgb("#dd2afb").rotate(-10deg)
// #let phycol = rgb("f2a03d")
#let phycol = rgb("568203")
#let phycol = rgb("008000")

#let thmspace = 0.8em

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



/* 
*     PROOFS
*
*     This section contains definitions of proof environments.
*
*
*
*/

#let proof(
  content
) = block(
  width: 100%)[
    #v(-thmspace)
    #block(
      fill: luma(245),
      width: 100%,
      radius: 5pt,
      inset: 10pt,
      breakable: true
    )[
      #{
          set text(
            size: 10pt,
          )
          set par(spacing: 0.75em)
          content
        }

        #place(
          right + bottom,
          dx: 2pt,
          dy: 4pt,
          square(size: 8pt, stroke: (thickness: 0.5pt, paint: mathblue), fill: white)
        )
      ]
      #v(thmspace)
]

#let proofof(title, content) = block(
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

/*
*
*   Legacy Code for proofs.
*
*/
#let beweisvon(title,content) = proofof(title, content)
#let beweisbox(content) = proof(content)

// <==========================================================================> //

/*
*
*   Various mathematical environments for theorems, definitions, lemmas, etc.
*
*
*
*/


#let baseenvcol(
  title,
  supplement,
  kind,
  content,
  color
) = block[
  #globalcount.step()

  #v(thmspace)
  #figure(
    block(
      breakable: true,
      width: 100%,
      align(
        left,
        underline(
          stroke: color,
          text(
            fill: color,
            weight: "bold",
            text(
              context{
                if counter(heading).get().len() >= 1 {
                  return text(context{counter(heading).get().first()})
                } else {
                  return ""
                }
              }
            )
            + text(
              context{
                if counter(heading).get().len() >= 2 {
                  return "." + text(context{counter(heading).get().at(1)})
                } else {
                  return ""
                }
              }
            ) 
            + "." 
            + text(context{globalcount.display("1")}) 
            + " " 
            + supplement 
            + "."
          ) 
          + text(
            context{
              if title != "" {
                return " " + text(fill: color, "(") + title + text(fill: color, ")") + "."
              } else {
                return ""
              }
            }
          )
        )
        + content
      )
    ),
    kind: kind,
    supplement: supplement,
  )

  #v(thmspace)
]

#let rbaseenvcol(
  title,
  supplement,
  kind,
  content,
  color
) = block[
  #globalcount.step()
  
  #v(thmspace)
  #figure(
    block(
      breakable: true,
      width: 100%,
      align(
        left,
        underline(
          stroke: color,
          text(
            fill: color,
            weight: "bold",
            text(
              context{
                if counter(heading).get().len() >= 1 {
                  return text(context{counter(heading).get().first()})
                } else {
                  return ""
                }
              }
            )
            + text(
              context{
                if counter(heading).get().len() >= 2 {
                  return "." + text(context{counter(heading).get().at(1)})
                } else {
                  return ""
                }
              }
            ) 
            + "." 
            + text(context{globalcount.display("1")}) 
            + " " 
            + supplement 
            + "."
          ) 
          + text(
            context{
              if title != "" {
                return " " + text(fill: color, "(") + title + text(fill: color, ")") + "."
              } else {
                return ""
              }
            }
          )
        )
        + content
      )
    ),
    kind: kind,
    supplement: supplement,
  ) #label(title.replace(" ", "-"))

  #v(thmspace)
]



#let mdef(title,content) = rbaseenvcol(
  title,
  "Definition",
  "mdef",
  text(style: "italic", content),
  mathblue
)

#let rmprop(title,content) = rbaseenvcol(
  title,
  "Proposition",
  "mprop",
  text(style: "italic", content),
  mathblue
)

#let rmbem(title,content) = rbaseenvcol(
  title,
  "Bemerkung",
  "mbem",
  content,
  mathblue
)

#let rmsatz(title,content) = rbaseenvcol(
  title,
  "Satz",
  "msatz",
  text(style: "italic", content),
  mathblue
)

#let rmcor(title,content) = rbaseenvcol(
  title,
  "Korollar",
  "mcor",
  text(style: "italic", content),
  mathblue
)

#let rmlem(title,content) = rbaseenvcol(
  title,
  "Lemma",
  "mlem",
  text(style: "italic", content),
  mathblue
)

#let rmbsp(title,content) = rbaseenvcol(
  title,
  "Beispiel",
  "mbsp",
  content,
  mathblue
)

#let mprop(content) = baseenvcol(
  "",
  "Proposition",
  "mprop",
  text(style: "italic", content),
  mathblue
)

#let mbem(content) = baseenvcol(
  "",
  "Bemerkung",
  "mbem",
  content,
  mathblue
)

#let msatz(content) = baseenvcol(
  "",
  "Satz",
  "msatz",
  text(style: "italic", content),
  mathblue
)

#let mcor(content) = baseenvcol(
  "",
  "Korollar",
  "mcor",
  text(style: "italic", content),
  mathblue
)

#let mlem(content) = baseenvcol(
  "",
  "Lemma",
  "mlem",
  text(style: "italic", content),
  mathblue
)

#let mbsp(content) = baseenvcol(
  "",
  "Beispiel",
  "mbsp",
  content,
  mathblue
)









#let pdef(title, content) = baseenvcol(
  title,
  "Definition",
  "pdef",
  content,
  phycol
)


#let pprop(content) = baseenvcol(
  "",
  "Proposition",
  "pprop",
  content,
  phycol
)

#let pbem(content) = baseenvcol(
  "",
  "Bemerkung",
  "pbem",
  content,
  phycol
)

#let pcor(content) = baseenvcol(
  "",
  "Korollar",
  "pcor",
  content,
  phycol
)

#let plem(content) = baseenvcol(
  "",
  "Lemma",
  "plem",
  content,
  phycol
)

#let pbsp(content) = baseenvcol(
  "",
  "Beispiel",
  "pbsp",
  content,
  phycol
)




#let rpprop(title, content) = rbaseenvcol(
  title,
  "Proposition",
  "pprop",
  content,
  phycol
)

#let rpbsp(title, content) = rbaseenvcol(
  title,
  "Beispiel",
  "pbsp",
  content,
  phycol
)







#let msatzdef(
  title,
  content
) = block[
  #globalcount.step()
  #figure(block(
    breakable: true,
    fill: white,
    width: 100%,
    align(left)[
      #underline(stroke: mathblue)[*#text(fill: mathblue, [#context{counter(heading).get().at(0)}.#context{counter(heading).get().at(1)}.#context{globalcount.display("1")} Satz und Definition.])* #text(fill: mathblue, [(])#title#text(fill: mathblue, [)]).]
      #content
    ]
  ),
  kind: "msatzdef",
  supplement: [Satz]
  ) #label(title.replace(" ", "-"))
  #v(thmspace)
]








#let mpropsa(
  content
) = block[
  #globalcount.step()
  #block(
    breakable: true,
    fill: white,
    width: 100%,
    [
      *#text(fill: mathblue, [Proposition.])*
      #content
    ]
  )
  #v(thmspace)
]






// >==================================================================================< //
//
// Boxen für Aufgaben und Fragen
//
// >==================================================================================< //

#let aufgcounter = counter("aufgcounter")


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
  row-gutter: 12pt,
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




// Legacy definitions in Archive
#import "archive.typ"
