#let long-symbol(sym, factor) = {
  assert(type(sym) == "symbol", message: "Input needs to be a symbol")
  assert(type(factor) == "integer" or type(factor) == "float", message: "Scale factor must be a number")
  assert(factor >= 1, message: "Scale factor must be >= 1")
  
  factor = 5*factor - 4
  let body = [#sym]
  style(styles => {
    let (body-w,body-h) = measure(body,styles).values()
    align(left)[
      #box(width: body-w*2/5,height: body-h,clip: true)[
        #align(left)[
          #body
        ]
      ]
      #h(0cm)
      #box(height: body-h, width: body-w*1/5*factor)[
        #scale(x: factor*100%,origin:left)[
          #box(height: body-h, width: body-w*1/5,clip:true)[
            #align(center)[
              #body
            ]
          ]
        ]
      ]
      #h(0cm)
      #box(width: body-w*2/5,clip: true)[
        #align(right)[
          #body
        ]
      ]
    ]
  })
}