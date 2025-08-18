function! Response(remark) abort
  if s:IsSilent(a:remark)
    return 'Fine. Be that way!'
  elseif s:IsLoudQuestion(a:remark)
    return "Calm down, I know what I'm doing!"
  elseif s:IsLoudStatement(a:remark)
    return "Whoa, chill out!"
  elseif s:IsQuestion(a:remark)
    return "Sure."
  else
    return "Whatever."
  endif
endfunction


function! s:IsSilent(remark) abort
  return trim(a:remark) ==# ''
endfunction

function! s:IsLoudQuestion(remark) abort
  return s:IsQuestion(a:remark) && s:IsLoud(a:remark)
endfunction

function! s:IsQuestion(remark) abort
  let l:trimmed = trim(a:remark)
  return l:trimmed[len(l:trimmed) - 1] ==# '?'
endfunction

function! s:IsLoudStatement(remark) abort
  return s:IsLoud(a:remark)
endfunction

function! s:IsLoud(remark) abort
  return a:remark =~? '[a-z]' && a:remark ==# toupper(a:remark)
endfunction
