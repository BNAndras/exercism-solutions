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

global function colors()
  return COLORS
end function

global function color_code(string color)
  return find(color, COLORS) - 1
end function

