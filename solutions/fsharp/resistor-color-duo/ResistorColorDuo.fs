module ResistorColorDuo

let private colors =
    [ "black"
      "brown"
      "red"
      "orange"
      "yellow"
      "green"
      "blue"
      "violet"
      "grey"
      "white" ]

let private colorCode color = 
    List.findIndex ((=) color) colors

let value colors =
    let tens = colorCode (List.item 0 colors)
    let ones = colorCode (List.item 1 colors)
    tens * 10 + ones
