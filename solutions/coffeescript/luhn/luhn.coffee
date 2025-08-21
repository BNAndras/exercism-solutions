class Luhn
  constructor: (sequence) ->
    if /[^\d\s]/.test sequence
      @cleaned = [] # invalid characters present
    else
      @cleaned = sequence.replace(/\D/g, '').split('').map(Number)

  valid: ->
    return false if @cleaned.length < 2

    total = 0
    for i in [@cleaned.length - 1..0] by -1
      n = @cleaned[i]
      if (@cleaned.length - i) % 2 == 0
        n *= 2
        n -= 9 if n > 9
      total += n
    total % 10 == 0

module.exports = Luhn
