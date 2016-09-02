" General {
    let mapleader = ','

    " Find merge conflict markers
    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
    noremap <Leader>t :noautocmd vimgrep /TODO/j **/*.js<CR>:cw<CR>
    map <Leader>p :CtrlPCmdPalette<CR>
" }

" Typos {
    command! -bang -nargs=* -complete=file E e<bang> <args>
    command! -bang -nargs=* -complete=file W w<bang> <args>
    command! -bang -nargs=* -complete=file Wq wq<bang> <args>
    command! -bang -nargs=* -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
" }

" UtilSnips {
    let g:UltiSnipsExpandTrigger = '<C-k>'
    let g:UltiSnipsJumpForwardTrigger = '<C-k>'
    let g:UltiSnipsJumpBackwardTrigger = '<C-j>'
" }

" NERDTreeFind {
    map <C-e> <plug>NERDTreeTabsToggle<CR>
    map <leader>e :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>
" }

" Tabularize {
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
" }

" Tern {
    map <Leader>tD :TernDoc<CR>
    map <Leader>tb :TernDocBrowse<CR>
    map <Leader>tt :TernType<CR>
    map <Leader>td :TernDef<CR>
    map <Leader>tpd :TernDefPreview<CR>
    map <Leader>tsd :TernDefSplit<CR>
    map <Leader>ttd :TernDefTab<CR>
    map <Leader>tr :TernRefs<CR>
    map <Leader>tR :TernRename<CR>
" }

" Speech {
    " Mac specific: Text-to-speech on selected text in visual mode
    " w: Don't replace selection with command output after execution
    " silent: Don't prompt for enter after execution
    :vnoremap <leader>v :w<Home>silent <End> !say <CR>
" }
