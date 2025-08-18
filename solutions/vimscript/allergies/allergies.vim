const s:ALLERGENS = [
\ ['eggs',           1],
\ ['peanuts',        2],
\ ['shellfish',      4],
\ ['strawberries',   8],
\ ['tomatoes',      16],
\ ['chocolate',     32],
\ ['pollen',        64],
\ ['cats',         128]]

function! AllergicTo(score, allergy) abort
  for [l:name, l:val] in s:ALLERGENS
    if l:name ==# a:allergy
      return and(a:score, l:val) != 0
    endif
  endfor

  return v:false
endfunction

function! List(score) abort
  let l:results = []
  for [l:name, l:val] in s:ALLERGENS
    if AllergicTo(a:score, l:name)
      call add(l:results, l:name)
    endif
  endfor

  return l:results
endfunction
