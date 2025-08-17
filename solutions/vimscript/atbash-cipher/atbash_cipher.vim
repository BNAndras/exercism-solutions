function! AtbashEncode(plaintext) abort
  let l:encoded = ''
  let l:cleaned = substitute(a:plaintext, '[^a-zA-Z0-9]', '', 'g')
  let l:count = 0
  for l:char in split(l:cleaned, '\zs')
    if l:count == 5
      let l:encoded .= ' '
      let l:count = 0
    endif 

    let l:char = tolower(l:char)
    let l:translated = l:char    
    if l:char >= 'a' && l:char <= 'z'
      let l:translated = nr2char(char2nr('a') + char2nr('z') - char2nr(l:char))
    endif

    let l:encoded .= l:translated
    let l:count += 1
  endfor

  return l:encoded
endfunction

function! AtbashDecode(cipher) abort
  let l:decoded = ''
  let l:cleaned = substitute(a:cipher, ' ', '', 'g')
  for l:char in split(l:cleaned, '\zs')
    let l:translated = l:char
    if l:char >= 'a' && l:char <= 'z'
      let l:translated = nr2char(char2nr('a') + char2nr('z') - char2nr(l:char))
    endif

    let l:decoded .= l:translated
  endfor

  return l:decoded
endfunction
