function! Distance(strand1, strand2)
  if len(a:strand1) != len(a:strand2)
    throw 'strands must be of equal length'
  endif

  let l:distance = 0
  for l:i in range(len(a:strand1))
    if a:strand1[l:i] != a:strand2[l:i]
      let l:distance += 1
    endif
  endfor

  return l:distance
endfunction
