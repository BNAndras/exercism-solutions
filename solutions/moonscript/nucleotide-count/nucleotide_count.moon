counter = (strand) ->
  counts = { 'A': 0, 'C': 0, 'G': 0, 'T': 0 }
  for char in string.gmatch(strand, ".")
    if char == 'A'
      counts.A += 1
    elseif char == 'C'
      counts.C += 1
    elseif char == 'G'
      counts.G += 1
    elseif char == 'T'
      counts.T += 1
    else
      error 'Invalid nucleotide in strand'
  counts

return counter
