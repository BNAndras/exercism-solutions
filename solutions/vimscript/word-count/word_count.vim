function! WordCount(sentence) abort
  let l:counts = {}
  let l:cleaned = substitute(tolower(a:sentence), '[^a-z0-9'']', ' ', 'g')
  for l:word in split(l:cleaned, ' ')
    let l:word = substitute(l:word, '\v^''+|''+$', "", "g")
    if empty(l:word)
      continue
    endif
    let l:counts[l:word] = get(l:counts, l:word, 0) + 1
  endfor
  return l:counts
endfunction
