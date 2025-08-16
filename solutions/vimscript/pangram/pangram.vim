function! IsPangram(sentence) abort
  let l:working = tolower(a:sentence)
  let l:working = substitute(l:working, '\A', '', 'g')
  let l:working = split(l:working, '\zs')
  return len(uniq(sort(l:working))) == 26
endfunction
