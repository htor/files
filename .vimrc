syntax on
filetype indent on
set nocompatible
set clipboard=unnamed
set background=light
set showcmd
set shortmess=AITstW
set nojoinspaces
set backspace=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set ignorecase
set smartcase
set nowritebackup
set noswapfile
set nobackup
set timeoutlen=1000
set ttimeoutlen=0
set path+=**
set listchars=tab:>>,extends:#,nbsp:@
set list
set ruler
set mouse=a
set number
let mapleader = ","
let g:netrw_banner = 0
let g:netrw_liststyle = 3
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <C-w>W
nnoremap <Leader><Leader> <C-^>
nnoremap Q <Nop>
command W w
command Wq wq
command Q q
command QA qa
command E e
hi CursorLine cterm=bold
