distance = (strand1, strand2) ->
  count = 0
  assert #strand1 == #strand2, 'strands must be of equal length'
  for idx = 1, #strand1
    charA = strand1\sub(idx, idx)
    charB = strand2\sub(idx, idx)
    if charA != charB
      count += 1
  count

{ :distance }
