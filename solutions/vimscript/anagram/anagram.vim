
function! FindAnagrams(candidates, subject) abort
  let l:anagrams = []
  for l:candidate in a:candidates
    if s:IsAnagram(l:candidate, a:subject)
      call add(l:anagrams, l:candidate)
    endif
  endfor
  return l:anagrams
endfunction

function! s:IsAnagram(wordA, wordB) abort
  if len(a:wordA) != len(a:wordB)
    return 0
  endif

  if a:wordA ==? a:wordB
    return 0
  endif

  let sortedA = sort(split(toupper(a:wordA), '\zs'))
  let sortedB = sort(split(toupper(a:wordB), '\zs'))

  return sortedA == sortedB
endfunction