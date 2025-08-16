function! NucleotideCounts(strand) abort
  let l:counts = {'A': 0, 'C': 0, 'T': 0, 'G': 0}

  for l:nucleotide in split(a:strand, '\zs')
    if !has_key(l:counts, l:nucleotide)
      throw 'Invalid nucleotide in strand'
    endif
    let l:counts[l:nucleotide] += 1
  endfor

  return l:counts
endfunction
