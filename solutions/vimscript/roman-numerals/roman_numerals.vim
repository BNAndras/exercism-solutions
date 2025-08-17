function! ToRoman(number) abort
  if a:number < 1 || a:number > 3999
    return ''
  endif

  let l:results = []
  let l:working = a:number
  for [l:step, l:label] in s:steps
    while l:working >= l:step
      call add(l:results, l:label)
      let l:working -= l:step
    endwhile
  endfor

  return join(l:results, '')
endfunction

let s:steps = [
  \ [1000, 'M'],
  \ [900, 'CM'],
  \ [500,  'D'],
  \ [400, 'CD'],
  \ [100,  'C'],
  \ [90,  'XC'],
  \ [50,   'L'],
  \ [40,  'XL'],
  \ [10,   'X'],
  \ [9,   'IX'],
  \ [5,    'V'],
  \ [4,   'IV'],
  \ [1,    'I']
\ ]