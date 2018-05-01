syntax on
filetype indent on
set nocompatible
set clipboard=unnamed
set background=light
set showcmd
set shortmess=AITstW
set nojoinspaces
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
set wildignore=node_modules/**,.git/**,package-lock*
set listchars=tab:>>,extends:#,nbsp:@
set list
set ruler
let g:netrw_banner=0
let g:netrw_liststyle=3
let mapleader=","
nnoremap <Tab> <C-w>w
nnoremap <Leader><Leader> <C-^>
noremap <C-c> :s:^:\/\/<CR>
noremap <C-d> :s:^\/\/<CR>
nnoremap Q <Nop>
command W w
command Wq wq
command Q q
