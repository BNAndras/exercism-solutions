let s:COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

"
" Returns the resistance value represented by the first two color strings in the passed list
"
" Example:
"
"   :echo Value(['black', 'brown'])
"   1
"
"   :echo Value(['brown', 'black'])
"   10
"
"   :echo Value(['green', 'brown'])
"   51
"
"   :echo Value(['green', 'brown', 'orange'])
"   51
"
function! Value(colors) abort
  let [l:color1, l:color2; l:rest] = a:colors
  let l:tens = index(s:COLORS, l:color1)
  let l:ones = index(s:COLORS, l:color2)

  return l:tens * 10 + l:ones
endfunction
