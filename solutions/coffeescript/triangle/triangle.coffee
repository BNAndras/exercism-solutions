class Triangle
  constructor: (sides...) ->
    sides.some((side) -> side <= 0) && throw "negative sides are illegal"
    
    [s1, s2, s3] = sides.sort()
    (s3 >= s2 + s1) && throw "violation of triangle inequality"
    
    @sides = new Set(sides)
    
  kind: ->
    switch @sides.size
      when 1
        "equilateral"
      when 3
        "scalene"
      else
        "isosceles"

module.exports = Triangle
