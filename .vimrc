"ale ctrlp.vim delimitMate emmet-vim tcomment_vim vim-auto-save 
"vim-css-color vim-es6 vim-multiple-cursors vim-surround
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
set listchars=tab:>>,extends:#,nbsp:@
set list
set ruler
set mouse=a
set number
let mapleader = ","
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:ale_linters = { 'javascript': ['standard'] }
let g:ale_linters_explicit = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:auto_save = 1
let g:auto_save_silent = 1
nnoremap <Tab> <C-w>w
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>f :ALEFix standard<CR>
noremap <Leader>c :TComment<CR>
nnoremap Q <Nop>
command W w
command Wq wq
command Q q
command QA qa
hi CursorLine cterm=bold
