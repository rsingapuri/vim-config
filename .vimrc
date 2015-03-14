"Indent settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"Vundle setup
set nocompatible
filetype off
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'

"Bundles
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-rails'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate' 
Plugin 'derekwyatt/vim-scala'
call vundle#end()

"Appearance settings
"
"For Solarized
"if !has("gui_running")
    "let g:solarized_termcolors=16
"endif
"colorscheme solarized

"For Monokai
colorscheme monokai

if has ("syntax")
    syntax on
endif
if has("gui_running")
    set guifont=Monaco:h11
    set antialias
    "set noantialias "Remove for most fonts
    "Il1egal = 0O
    "set transparency=15
    set guioptions-=r
    set lines=25
    set columns=84
    set nocursorline
endif
set ruler
set rnu
autocmd InsertLeave * :set rnu
autocmd InsertEnter * :set nornu | set nu
set numberwidth=4
set go-=L
set scrolloff=7

"Language specific
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

"Key mappings
"nnoremap <C-F> :call GoFullscreen()<CR>
"nnoremap <C-S> :call EndFullscreen()<CR>
nnoremap <C-A> :%s/\ \ *$//g<CR>
nnoremap <C-L> :wincmd l<CR>
nnoremap <C-H> :wincmd h<CR>
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-K> :wincmd k<CR>

"Fixes

autocmd BufRead,BufNewFile *.scala set filetype=scala
"NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"JS
imap <C-c> <CR><Esc>O

"Function definitions
"function GoFullscreen()
    "set fullscreen
    "set transparency=0
    ""execute "NERDTree"
    ""wincmd l
"endfunction

"function EndFullscreen()
    "set nofullscreen
    "set transparency=15
    "set lines=24
    "set columns=84
    ""execute "NERDTreeClose"
"endfunction
