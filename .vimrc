" PLUGIN MANAGER: https://github.com/junegunn/vim-plug
" ----- PLUGINS -----

if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Tools
        Plug 'airblade/vim-gitgutter'
        Plug 'vifm/vifm.vim'
"Syntax
        Plug 'tpope/vim-markdown'
"Color-Schemes
        Plug 'morhetz/gruvbox'
call plug#end()

" ----- SETTINGS ----

set encoding=UTF-8
filetype plugin indent on
syntax on
set number
set autoread
set backspace=indent,eol,start
set noruler
set confirm
set autoindent
set smartindent
set hls is
set ic
set cursorline

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

map <C-n> :EditVifm .<CR>

nnoremap Q <nop>

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" ----- COLORSCHEME -----
" colorscheme gruvbox
" set background=dark
