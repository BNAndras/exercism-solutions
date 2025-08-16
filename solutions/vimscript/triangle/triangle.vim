function! Equilateral(triangle) abort
  let l:sides = sort(copy(a:triangle))

  return s:IsTriangle(l:sides) &&
  \      len(uniq(l:sides)) == 1
endfunction

function! Isosceles(triangle) abort
  let l:sides = sort(copy(a:triangle))
  return s:IsTriangle(l:sides) &&
  \      len(uniq(l:sides)) <= 2
endfunction

function! Scalene(triangle) abort
  let l:sides = sort(copy(a:triangle))
  return s:IsTriangle(l:sides) &&
  \      len(uniq(l:sides)) == 3
endfunction

function! s:IsTriangle(sides) abort
  return s:HasNonZeroSides(a:sides) &&
  \      s:SatisfiesTriangleInequality(a:sides)
endfunction

function s:HasNonZeroSides(sides) abort
  return len(filter(copy(a:sides), 'v:val > 0')) == len(a:sides)
endfunction

function s:SatisfiesTriangleInequality(sides) abort
  let [l:sideA, l:sideB, l:sideC] = a:sides
  return l:sideA + l:sideB >= l:sideC
endfunction
