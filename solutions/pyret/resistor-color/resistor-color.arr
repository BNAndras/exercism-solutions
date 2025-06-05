provide: color-code, colors end

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

fun color-code(color :: String) -> NumInteger:
  unsafe-index-of(RESISTOR-COLORS, color)
end

fun colors() -> List<String>:
  RESISTOR-COLORS
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