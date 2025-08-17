function! ToNANP(number) abort
  let l:cleaned = substitute(a:number, '[^0-9]', '', 'g')
  if len(cleaned) < 10 || len(cleaned) > 11
    return ''
  endif
  if len(cleaned) == 11 && cleaned[0] !=# '1'
    return ''
  endif

  if len(cleaned) == 11
    let l:cleaned = cleaned[1:]
  endif

  if l:cleaned[0] ==# '0' || l:cleaned[0] ==# '1'
    return ''
  endif
  if l:cleaned[3] ==# '0' || l:cleaned[3] ==# '1'
    return ''
  endif

  return l:cleaned
endfunction
