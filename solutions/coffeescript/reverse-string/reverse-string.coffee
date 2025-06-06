class ReverseString  
  @reverse: (str) -> 
    str.split('').reduce (acc, char) ->
      char.concat(acc)
    , ''

module.exports = ReverseString