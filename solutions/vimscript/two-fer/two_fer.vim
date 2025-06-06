""
"" Format a message to another person as 'One for <name>, one for me.'
""
"" Example:
""
"" :echo TwoFer('')
"" One for you, one for me.
""
"" :echo TwoFer('Alice')
"" One for Alice, one for me.
""
function! TwoFer(name) abort
  let l:person = (a:name ==? '') ? 'you' : a:name
  return 'One for ' . l:person . ', one for me.'
endfunction
