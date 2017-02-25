function! neomake#makers#ft#xml#xmllint()
    return {
                \ 'args': ['--xinclude', '--postvalid'],
                \ 'errorformat': '%E%f:%l: error : %m,' .
                \ '%-G%f:%l: validity error : ' .
                \ 'Validation failed: no DTD found %m,' .
                \ '%W%f:%l: warning : %m,' .
                \ '%W%f:%l: validity warning : %m,' .
                \ '%E%f:%l: validity error : %m,' .
                \ '%E%f:%l: parser error : %m,' .
                \ '%E%f:%l: %m,' .
                \ '%-Z%p^,' .
                \ '%-G%.%#'
           \ }
endfunction

function! neomake#makers#ft#xml#EnabledMakers()
    let linter = []
    if neomake#utils#Exists('xmllint')
        call add(linter, 'xmllint')
    endif
    return linter
endfunction
