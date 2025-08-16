function! DifferenceOfSquares(number) abort
  return SquareOfSum(a:number) - SumOfSquares(a:number)
endfunction

function! SquareOfSum(number) abort
  let l:sum = 0
  for l:n in range(1, a:number)
    let l:sum += l:n
  endfor
  return l:sum * l:sum
endfunction

function! SumOfSquares(number) abort
  let l:sum = 0
  for l:n in range(1, a:number)
    let l:sum += l:n * l:n
  endfor
  return l:sum
endfunction
