provide: color-code end

RESISTOR-COLORS = [list:
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
  ]

fun color-code(colors :: List<String>) -> NumInteger:
  tens = unsafe-index-of(RESISTOR-COLORS, colors.get(0))
  ones = unsafe-index-of(RESISTOR-COLORS, colors.get(1))

  (tens * 10) + ones
end


fun unsafe-index-of(l :: List<Any>, elem :: Any) -> NumInteger:
  cases (List) l:
    | empty => 0
    | link(f, r) => 
      if f == elem:
        0
      else:
        1 + unsafe-index-of(r, elem)
      end
  end
end