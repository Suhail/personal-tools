colo desert
syntax on
set t_Co=256

set modeline
set autoindent
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase

au BufRead,BufNewFile Makefile* set noexpandtab

let python_highlight_all=1
let python_slow_sync=1
set mouse=a
vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!pbcopy -selection c<CR>u
set number
set vb t_vb=

syntax on
" Automatically indent: ``filetype indent on``
" filetype indent on
" Folding based on indentation: ``set foldmethod=indent``
set foldcolumn=5
"
" Make trailing whitespace explicit:
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
" or
"set list listchars=trail:-
"
set list listchars=tab:--
" set foldmethod=indent

autocmd VimEnter * wincmd p
