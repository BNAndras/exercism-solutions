steps = {
  { step: 1000, symbol: 'M' }
  { step: 900, symbol: 'CM' }
  { step: 500, symbol: 'D' }
  { step: 400, symbol: 'CD' }
  { step: 100, symbol: 'C' }
  { step: 90, symbol: 'XC' }
  { step: 50, symbol: 'L' }
  { step: 40, symbol: 'XL' }
  { step: 10, symbol: 'X' }
  { step: 9, symbol: 'IX' }
  { step: 5, symbol: 'V' }
  { step: 4, symbol: 'IV' }
  { step: 1, symbol: 'I' }
}

{
  to_roman: (number) ->
    result = ''
    for { :step, :symbol } in *steps
      while number >= step
        result ..= symbol
        number -= step
    result
}
