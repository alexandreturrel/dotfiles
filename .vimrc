" ----- PLUGINS -----

call plug#begin('~/.vim/plugged')
" Tools
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-surround'
"Syntax
        Plug 'tpope/vim-markdown'
"Color-Schemes
        Plug 'morhetz/gruvbox'
call plug#end()

" ----- SETTINGS ----

set encoding=UTF-8
filetype plugin indent on
syntax on
" set number
set relativenumber
set autoread
set backspace=indent,eol,start
set noruler
set confirm
set autoindent
set smartindent
set hls is
set ic
set tags=tags
set mouse=a
"set cursorline

set laststatus=2
set statusline=
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F

set statusline+=%=
set statusline+=\%c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" ----- KEY MAPPING -----

" map <C-n> :EditVifm .<CR>

nnoremap Q <nop>

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv


" ----- VIM CHEAT SHEET -----
" moving up and down one line: j, k
" first line, last line, line number: g, G, 8gg
" top of the screen: H
" middle of the screen: M
" bottom of the screen: L
"
" move half screen: Ctrl+D, Ctrl+U
" move full screen: Ctrl+F, Ctrl+B
"
" put the cursor on top, center, bottom of the screen: zt, zz, zb
"
" scroll one line: Ctrl+y, Ctrl+e
"
" begin of a line: 0, ^
" end of line: $, g_
"
" move to the 10% of the file: 10%
"
" search all occurencies of the current word: *
"
" delete to the end of line: D
" change to the end of line: C
"
" jump to the end of a word: e, E
" jump to the next word: w, W
" jump backwards: b, B
" jump from opening bracket to closing one: %
"
" finding the next occurence of a character: f, t
" (f includes it in the selection, t does not)
"
" repeat last edit: .
" undo last edit: u
"
" simple word completion: Ctrl+n, Ctrl+p
" fuzzy search for existing documents in the current dir and/or subdir:
" Ctrl+x Ctrl+f
"
" open another file for edition in a new window: :e [path/to/file]
" horizontal split the screen to open another file: :sp [path/to/file]
" vertical split the screen to open another file: :vs [path/to/file]
"
" open new file in a new tab: :tabe [path/to/file]
" jump between tabs: gt, gT or ngt (with n the tab index starting by 1)
" close current tab: :tabc
" view all tabs: :tabs
"
" ============
" Surround.vim
" ============
" add surroundings around selection: ys[selection][surroundings]
" change current surroundings with new ones: cs[current][new]
" delete current surroundings: ds[current]
