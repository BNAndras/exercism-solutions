function! ToRna(strand) abort
  let l:rna = []

  for l:nucleotide in split(a:strand, '\zs')
    if l:nucleotide == 'G'
      call add(l:rna, 'C')
    elseif l:nucleotide == 'C'
      call add(l:rna, 'G')
    elseif l:nucleotide == 'T'
      call add(l:rna, 'A')
    elseif l:nucleotide == 'A'
      call add(l:rna, 'U')
    else
      return ''
    endif
  endfor

  return join(l:rna, '')
endfunction
