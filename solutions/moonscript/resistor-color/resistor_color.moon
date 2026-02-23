colors = ->
  {
    'black'
    'brown'
    'red'
    'orange'
    'yellow'
    'green'
    'blue'
    'violet'
    'grey'
    'white'
  }

color_code = (color) ->
  for idx, candidate in ipairs colors()
    if candidate == color
      return idx - 1
  -1


{ :colors, :color_code }
