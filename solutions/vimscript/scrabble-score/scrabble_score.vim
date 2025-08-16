function! Score(word) abort
  let l:sum = 0

  for l:char in split(a:word, '\zs')
    let l:sum += ScoreFor(l:char)
  endfor

  return l:sum
endfunction

function! ScoreFor(char) abort
  if a:char ==? 'A'
    return  1
  elseif a:char ==? 'B'
    return  3
  elseif a:char ==? 'C'
    return  3
  elseif a:char ==? 'D'
    return  2
  elseif a:char ==? 'E'
    return  1
  elseif a:char ==? 'F'
    return  4
  elseif a:char ==? 'G'
    return  2
  elseif a:char ==? 'H'
    return  4
  elseif a:char ==? 'I'
    return  1
  elseif a:char ==? 'J'
    return  8
  elseif a:char ==? 'K'
    return  5
  elseif a:char ==? 'L'
    return  1
  elseif a:char ==? 'M'
    return  3
  elseif a:char ==? 'N'
    return  1
  elseif a:char ==? 'O'
    return  1
  elseif a:char ==? 'P'
    return  3
  elseif a:char ==? 'Q'
    return 10
  elseif a:char ==? 'R'
    return  1
  elseif a:char ==? 'S'
    return  1
  elseif a:char ==? 'T'
    return  1
  elseif a:char ==? 'U'
    return  1
  elseif a:char ==? 'V'
    return  4
  elseif a:char ==? 'W'
    return  4
  elseif a:char ==? 'X'
    return  8
  elseif a:char ==? 'Y'
    return  4
  elseif a:char ==? 'Z'
    return 10
  else
    return 0
  endif
endfunction
