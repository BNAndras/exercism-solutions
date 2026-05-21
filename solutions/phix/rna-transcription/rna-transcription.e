function translate(atom nucleotide)
  switch nucleotide do
    case 'C': return 'G'
    case 'G': return 'C'
    case 'A': return 'U'
    case 'T': return 'A'
  end switch
end function

global function to_rna(sequence dna)
  return apply(dna, translate)
end function
