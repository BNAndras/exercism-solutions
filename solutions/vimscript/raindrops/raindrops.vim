"
" Convert a number to a string, the contents of which depend on the number's factors.
"
"   - If the number has 3 as a factor, output 'Pling'.
"   - If the number has 5 as a factor, output 'Plang'.
"   - If the number has 7 as a factor, output 'Plong'.
"   - If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.
"
" Example:
"
"   :echo Raindrops(15)
"   PlingPlang
"
function! Raindrops(num) abort
  let l:str = ''

  if a:num % 3 == 0
    let l:str .= 'Pling'
  endif
  if a:num % 5 == 0
    let l:str .= 'Plang'
  endif
  if a:num % 7 == 0
    let l:str .= 'Plong'
  endif

  return empty(l:str) ? string(a:num) : l:str
endfunction
