call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'jremmen/vim-ripgrep'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
"Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-rooter'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()

syntax on
colorscheme dracula
set t_ZH=[3m
set t_ZR=[23m

set tabstop=4
set softtabstop=4
set expandtab
set number
set relativenumber
set showcmd
set ruler
set shiftwidth=4
set updatetime=100

" Cursor line highlight
set cursorline

" Filetype detection
filetype indent on
filetype plugin indent on

set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch

let mapleader=","

nnoremap <leader><space> :nohlsearch<CR>

nmap <C-n> :NERDTreeToggle<CR>

" fzf
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <C-p> :FZF<CR>

" rg case-insensitive
let g:rg_command = 'rg --vimgrep -S'

" makes nerdtree and vim-startify work together
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

let g:prettier#config#phpVersion = "7.3"
let g:prettier#config#tab_width = 4

"nmap <Leader>mm :PhpactorContextMenu<CR>

"window nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" neomake auto error detect
call neomake#configure#automake('nrwi', 500)
"neomake show window error automatically
" let g:neomake_open_list = 2

" ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>" 

"let g:airline_powerline_fonts = 1
:set mouse=a
