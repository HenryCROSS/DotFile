call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'
call plug#end()

syntax on
set number
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2
set hidden
set nowrap
"增量式搜索set incsearch
"高亮搜索set hlsearch
"有时中文会显示乱码，用一下几条命令解决let &termencoding=&encoding
set fileencodings=utf-8,gbk
set smarttab
set noeb
set nocompatible

set wildmenu

set scrolloff=3
set completeopt=longest,menu

set nobackup
set noswapfile
set history=1000
set autowrite
set cursorline
set autoindent
set ruler
set magic
set ignorecase
set termguicolors
set undofile

set splitbelow
set splitright

set laststatus=2
filetype on
filetype plugin on
filetype indent on

set viminfo+=!

set nobackup
set noswapfile
set noundofile

let g:auto_save = 1

highlight Pmenu    guibg=darkgrey  guifg=black 
highlight PmenuSel guibg=lightgrey guifg=black

" Keybinding
let mapleader = " "
set timeoutlen=1000

" general keybinding
nmap <leader>ws :split<CR>
nmap <leader>wv :vsplit<CR>
nmap <leader>wq <c-w>q

nmap <leader>to :terminal<CR>
nmap <C-q> <c-\><c-n>


" fzf keybinding
nmap <leader>ff :Files<CR>
nmap <leader>, :Buffers<CR>

color gruvbox
set background=dark


"completion
" enable this plugin for filetypes, '*' for all files.
let g:apc_enable_ft = {'*':1, 'text':1, 'markdown':1, 'php':1}

let g:apc_min_length = 1

" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c
