call plug#begin('~/.vim/plugged')

" NERDTree {
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let g:nerdtree_tabs_open_on_gui_startup=0

    " Do not need to close NERDTree on exit {
        function! NERDTreeInitAsNeeded()
            redir => bufoutput
            buffers!
            redir END
            let idx = stridx(bufoutput, "NERD_tree")
            if idx > -1
                NERDTreeMirror
                NERDTreeFind
                wincmd l
            endif
        endfunction
    " }
" }

" Ack {
    Plug 'mileszs/ack.vim'  "For text searching
    if executable('ag')
      let g:ackprg = 'ag --vimgrep'
    endif
" }
"
" ctrlp {
    Plug 'kien/ctrlp.vim'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_custom_ignore = {
                \ 'dir':  '\.git$\|\.hg$\|\.svn$',
                \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
    if executable('ag')
        let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
    elseif executable('ack-grep')
        let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
    elseif executable('ack')
        let s:ctrlp_fallback = 'ack %s --nocolor -f'
        " On Windows use "dir" as fallback command.
    else
        let s:ctrlp_fallback = 'find %s -type f'
    endif
    if exists("g:ctrlp_user_command")
        unlet g:ctrlp_user_command
    endif
    let g:ctrlp_user_command = {
                \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': s:ctrlp_fallback
                \ }
" }

" Neomake {
    Plug 'benekastah/neomake'
    let g:neomake_javascript_enabled_makers = ['jshint']
    "autocmd InsertChange,TextChanged * update | Neomake
    autocmd! BufWritePost * Neomake

    let g:neomake_error_sign = {
                \ 'text': '>>',
                \ 'texthl': 'ErrorMsg',
                \ }
    hi MyWarningMsg ctermbg=3 ctermfg=0
    let g:neomake_warning_sign = {
                \ 'text': '>>',
                \ 'texthl': 'MyWarningMsg',
                \ }
    let g:neomake_open_list = 2
    let g:neomake_list_height = 2
" }

" UI {
    Plug 'powerline/fonts'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/seoul256.vim'
" }

" Writing {
    Plug 'reedes/vim-litecorrect'
    Plug 'reedes/vim-textobj-sentence'
    Plug 'reedes/vim-textobj-quote'
    Plug 'reedes/vim-wordy'
" }

" deoplete {
    function! DoRemote(arg)
        UpdateRemotePlugins
    endfunction
    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
    let g:deoplete#enable_at_startup = 1
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"}

" Tern {
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
    let g:tern_show_argument_hints = 'on_hold'
    let g:tern_show_signature_in_pum = 1
    autocmd FileType javascript setlocal omnifunc=tern#Complete
" }

" Language Support {
    Plug 'pangloss/vim-javascript'
    Plug 'moll/vim-node'
    Plug 'mxw/vim-jsx'
    Plug 'othree/html5.vim'
    Plug 'elzr/vim-json'
    Plug 'groenewege/vim-less'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-cucumber'
    Plug 'mustache/vim-mustache-handlebars'
    let g:mustache_abbreviations = 1
" }

" Other {
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'junegunn/vim-easy-align'
    Plug 'junegunn/vim-github-dashboard'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-git'
    Plug 'godlygeek/tabular'
    Plug 'mbbill/undotree'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'PreserveNoEOL'
    Plug 'luochen1990/rainbow'
    Plug 'amirh/HTML-AutoCloseTag'
    Plug 'gorodinskiy/vim-coloresque'
    Plug 'scrooloose/nerdcommenter'
    Plug 'mhinz/vim-signify'
" }

call plug#end()

