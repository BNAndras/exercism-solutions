steps = (number) ->
  assert number > 0, 'Only positive integers are allowed'

  steps = 0
  while number > 1 do
    if number % 2 == 0
      number = number / 2
    else
      number = 3 * number + 1
    steps += 1

  steps

{ :steps }
