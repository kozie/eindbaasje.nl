set nocompatible
filetype indent on " plugin

syntax on
colo jellybeans
set bg=light

set ai si is ic nu rnu ts=4 sw=4 et nowrap
set backspace=indent,eol,start
set encoding=utf-8 tenc=utf-8 fenc=utf-8
set laststatus=2
set nostartofline

" Netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let mapleader=","

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

imap jj <Esc>
no <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
no <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nn <space> <c-w>

" Insert mode movement
ino <C-k> <Up>
ino <C-j> <Down>
ino <C-h> <Left>
ino <C-l> <Right>
