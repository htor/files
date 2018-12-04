syntax on
filetype indent on
execute pathogen#infect()
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
set wildignore=node_modules/**,.git/**,package-lock*
set listchars=tab:>>,extends:#,nbsp:@
set list
set ruler
set mouse=a
set number
let g:netrw_banner=0
let g:netrw_liststyle=3
let mapleader=","
let g:ale_linters = { 'javascript': ['standard'] }
let g:ale_linters_explicit = 1
nnoremap <Tab> <C-w>w
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>. :ALEFix standard<CR>
noremap <C-c> :s:^:\/\/<CR>
noremap <C-d> :s:^\/\/<CR>
nnoremap Q <Nop>
command W w
command Wq wq
command Q q
command QA qa
hi CursorLine cterm=bold
