math = require "math"

score = (x, y) ->
  hypot = math.sqrt x^2 + y^2
  if hypot <= 1
    return 10
  else if hypot <= 5
   return 5
  else if hypot <= 10
   return 1
  0

{ :score }
