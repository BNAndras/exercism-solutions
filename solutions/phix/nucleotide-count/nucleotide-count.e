global function counts(sequence nucleotides)
    integer a = 0, c = 0, g = 0, t = 0
    for nucleotide in nucleotides do
        switch nucleotide do
          case 'A': a += 1
          case 'C': c += 1
          case 'G': g += 1
          case 'T': t += 1
          else: return 0
        end switch
    end for
    return { {'A', a}, {'C', c}, {'G', g}, {'T', t} }
end function
