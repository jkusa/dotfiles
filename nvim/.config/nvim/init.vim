" The beginning {
    set nocompatible        " Must be first line
" }

" Include files {
    source ~/.config/nvim/plugins.vim
    source ~/.config/nvim/keymap.vim
    source ~/.config/nvim/functions.vim
" }

" General {
    filetype plugin indent on
    set ttimeout
    set ttimeoutlen=0
    set history=1000                " Store a ton of history (default is 20)
    set spell                       " Spell checking on
    set clipboard=unnamed           " Allows system clipboard to work with vim
    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set list
    set undofile                    " Persist undo tree across launches
    set undolevels=1000             " Maximum number of changes that can be undone
    set undoreload=10000            " Maximum number lines to save for undo on a buffer reload

    set listchars=tab:›\ ,trail:•,extends:#,nbsp:.  " Highlight problematic whitespace

    " Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv
" }

" UI {
    set background=dark
    colo seoul256
    set cursorline                  " Highlight current line
    set noshowmode
    set laststatus=2
" }

" Formatting {
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set hidden                      " Allow buffer switching without saving
    set iskeyword-=.                " '.' is an end of word designator
    set iskeyword-=#                " '#' is an end of word designator
    set iskeyword-=-                " '-' is an end of word designator
" }

" Completion {
    augroup omnifuncs
      autocmd!
      autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
      autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
      autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
      autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    augroup end
" }

" Temporary Files {{{
    " Store temporarily files globally instead of in working directory
    set backupdir=~/.config/nvim/backup
    if !isdirectory(expand(&backupdir))
      call mkdir(expand(&backupdir), "p")
    endif
    set directory=~/.vim/tmp/swap
    if !isdirectory(expand(&directory))
      call mkdir(expand(&directory), "p")
    endif
    if has('persistent_undo')
      set undodir=~/.config/nvim/undodir
      if !isdirectory(expand(&undodir))
        call mkdir(expand(&undodir), "p")
      endif
    endif
" }}}
