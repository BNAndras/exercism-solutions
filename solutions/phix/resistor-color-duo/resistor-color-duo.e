sequence COLORS = {
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white"
}

function color_code(string color)
  return find(color, COLORS) - 1
end function

global function resistor(sequence colors)
  integer tens = color_code(colors[1])
  integer ones = color_code(colors[2])
  return tens * 10 + ones
end function
