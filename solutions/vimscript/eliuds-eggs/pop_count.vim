function! EggCount(num) abort
    let l:counter = 0

    let l:working = a:num
    while l:working != 0
        if l:working % 2
            let l:counter += 1
        endif

        let l:working /= 2
    endwhile

    return l:counter
endfunction
