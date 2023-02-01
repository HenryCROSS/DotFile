call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
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
"nmap <leader>to <c-\><c-n>


" fzf keybinding
nmap <leader>ff :Files<CR>
nmap <leader>, :Buffers<CR>

color gruvbox
set background=dark

"it is a simple completion I found
" vim: set noet fenc=utf-8 ff=unix sts=4 sw=4 ts=4 :
"
" apc.vim - auto popup completion window
"
" Created by skywind on 2020/03/05
" Last Modified: 2022/12/05 21:22
"
" Features:
"
" - auto popup complete window without select the first one
" - tab/s-tab to cycle suggestions, <c-e> to cancel
" - use ApcEnable/ApcDisable to toggle for certiain file.
"
" Usage:
"
" set cpt=.,k,b
" set completeopt=menu,menuone,noselect
" let g:apc_enable_ft = {'text':1, 'markdown':1, 'php':1}

let g:apc_enable_ft = get(g:, 'apc_enable_ft', {})    " enable filetypes
let g:apc_enable_tab = get(g:, 'apc_enable_tab', 1)   " remap tab
let g:apc_min_length = get(g:, 'apc_min_length', 2)   " minimal length to open popup
let g:apc_key_ignore = get(g:, 'apc_key_ignore', [])  " ignore keywords
let g:apc_trigger = get(g:, 'apc_trigger', "\<c-n>")  " which key to trigger popmenu

" get word before cursor
function! s:get_context()
        return strpart(getline('.'), 0, col('.') - 1)
endfunc

function! s:meets_keyword(context)
        if g:apc_min_length <= 0
                return 0
        endif
        let matches = matchlist(a:context, '\(\k\{' . g:apc_min_length . ',}\)$')
        if empty(matches)
                return 0
        endif
        for ignore in g:apc_key_ignore
                if stridx(ignore, matches[1]) == 0
                        return 0
                endif
        endfor
        return 1
endfunc

function! s:check_back_space() abort
          return col('.') < 2 || getline('.')[col('.') - 2]  =~# '\s'
endfunc

function! s:on_backspace()
        if pumvisible() == 0
                return "\<BS>"
        endif
        let text = matchstr(s:get_context(), '.*\ze.')
        return s:meets_keyword(text)? "\<BS>" : "\<c-e>\<bs>"
endfunc


" autocmd for CursorMovedI
function! s:feed_popup()
        let enable = get(b:, 'apc_enable', 0)
        let lastx = get(b:, 'apc_lastx', -1)
        let lasty = get(b:, 'apc_lasty', -1)
        let tick = get(b:, 'apc_tick', -1)
        if &bt != '' || enable == 0 || &paste
                return -1
        endif
        let x = col('.') - 1
        let y = line('.') - 1
        if pumvisible()
                let context = s:get_context()
                if s:meets_keyword(context) == 0
                        call feedkeys("\<c-e>", 'n')
                endif
                let b:apc_lastx = x
                let b:apc_lasty = y
                let b:apc_tick = b:changedtick
                return 0
        elseif lastx == x && lasty == y
                return -2
        elseif b:changedtick == tick
                let lastx = x
                let lasty = y
                return -3
        endif
        let context = s:get_context()
        if s:meets_keyword(context)
                silent! call feedkeys(get(b:, 'apc_trigger', g:apc_trigger), 'n')
                let b:apc_lastx = x
                let b:apc_lasty = y
                let b:apc_tick = b:changedtick
        endif
        return 0
endfunc

" autocmd for CompleteDone
function! s:complete_done()
        let b:apc_lastx = col('.') - 1
        let b:apc_lasty = line('.') - 1
        let b:apc_tick = b:changedtick
endfunc

" enable apc
function! s:apc_enable()
        call s:apc_disable()
        augroup ApcEventGroup
                au!
                au CursorMovedI <buffer> nested call s:feed_popup()
                au CompleteDone <buffer> call s:complete_done()
        augroup END
        let b:apc_init_autocmd = 1
        if g:apc_enable_tab
                inoremap <silent><buffer><expr> <tab>
                                        \ pumvisible()? "\<c-n>" :
                                        \ <SID>check_back_space() ? "\<tab>" : 
                                        \ get(b:, 'apc_trigger', g:apc_trigger)
                inoremap <silent><buffer><expr> <s-tab>
                                        \ pumvisible()? "\<c-p>" : "\<s-tab>"
                let b:apc_init_tab = 1
        endif
        if get(g:, 'apc_cr_confirm', 0) == 0
                inoremap <silent><buffer><expr> <cr> 
                                        \ pumvisible()? "\<c-y>\<cr>" : "\<cr>"
        else
                inoremap <silent><buffer><expr> <cr> 
                                        \ pumvisible()? "\<c-y>" : "\<cr>"
        endif
        inoremap <silent><buffer><expr> <bs> <SID>on_backspace()
        let b:apc_init_bs = 1
        let b:apc_init_cr = 1
        let b:apc_save_infer = &infercase
        setlocal infercase
        let b:apc_enable = 1
endfunc

" disable apc
function! s:apc_disable()
        if get(b:, 'apc_init_autocmd', 0)
                augroup ApcEventGroup
                        au! 
                augroup END
        endif
        if get(b:, 'apc_init_tab', 0)
                silent! iunmap <buffer><expr> <tab>
                silent! iunmap <buffer><expr> <s-tab>
        endif
        if get(b:, 'apc_init_bs', 0)
                silent! iunmap <buffer><expr> <bs>
        endif
        if get(b:, 'apc_init_cr', 0)
                silent! iunmap <buffer><expr> <cr>
        endif
        if get(b:, 'apc_save_infer', '') != ''
                let &l:infercase = b:apc_save_infer
        endif
        let b:apc_init_autocmd = 0
        let b:apc_init_tab = 0
        let b:apc_init_bs = 0
        let b:apc_init_cr = 0
        let b:apc_save_infer = ''
        let b:apc_enable = 0
endfunc

" check if need to be enabled
function! s:apc_check_init()
        if &bt != '' || get(b:, 'apc_enable', 1) == 0
                return
        endif
        if get(g:apc_enable_ft, &ft, 0) != 0
                ApcEnable
        elseif get(g:apc_enable_ft, '*', 0) != 0
                ApcEnable
        elseif get(b:, 'apc_enable', 0)
                ApcEnable
        endif
endfunc

" commands & autocmd
command! -nargs=0 ApcEnable call s:apc_enable()
command! -nargs=0 ApcDisable call s:apc_disable()

augroup ApcInitGroup
        au!
        au FileType * call s:apc_check_init()
        au BufEnter * call s:apc_check_init()
        au TabEnter * call s:apc_check_init()
augroup END

" enable this plugin for filetypes, '*' for all files.
let g:apc_enable_ft = {'*':1, 'text':1, 'markdown':1, 'php':1}

" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c
