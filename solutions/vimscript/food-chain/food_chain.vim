let s:ANIMALS = [
  \ 'fly',
  \ 'spider',
  \ 'bird',
  \ 'cat',
  \ 'dog',
  \ 'goat',
  \ 'cow',
  \ 'horse']

let s:REACTIONS = [
  \ "I don't know why she swallowed the fly. Perhaps she'll die.",
  \ "It wriggled and jiggled and tickled inside her.",
  \ "How absurd to swallow a bird!",
  \ "Imagine that, to swallow a cat!",
  \ "What a hog, to swallow a dog!",
  \ "Just opened her throat and swallowed a goat!",
  \ "I don't know how she swallowed a cow!",
  \ "She's dead, of course!"
\ ]

function! Recite(endVerse, startVerse) 
  let l:lyrics = []
  
  for l:verse in range(a:startVerse, a:endVerse)
    let l:idx = l:verse - 1
    call add(l:lyrics, "I know an old lady who swallowed a " . s:ANIMALS[l:idx] . ".")
    call add(l:lyrics, s:REACTIONS[l:idx])
    
    if l:verse > 1 && l:verse < 8
      for l:j in range(l:idx, 1, -1)
        if l:j == 2
          call add(l:lyrics, "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.")
        else  
          call add(l:lyrics, "She swallowed the " . s:ANIMALS[l:j] . " to catch the " . s:ANIMALS[l:j - 1] . ".")
        endif
      endfor
      call add(l:lyrics, "I don't know why she swallowed the fly. Perhaps she'll die.")
    endif
    
    if l:verse < a:endVerse
      call add(l:lyrics, "")
    endif
  endfor
  
  return l:lyrics
endfunction