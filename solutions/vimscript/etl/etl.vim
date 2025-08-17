function! Transform(scores) abort
  let l:transformed = {}
  for [l:score, l:letters] in items(a:scores)
    for l:letter in l:letters
      let l:transformed[tolower(l:letter)] = str2nr(l:score)
    endfor
  endfor
  return l:transformed
endfunction
