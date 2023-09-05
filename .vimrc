" PLUGIN MANAGER: https://github.com/junegunn/vim-plug
" ----- PLUGINS -----

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Wiki
        Plug 'vimwiki/vimwiki'
" Tools
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-commentary'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
"Syntax
        Plug 'christoomey/vim-titlecase'
        Plug 'tpope/vim-markdown'
"Color-Schemes
        Plug 'morhetz/gruvbox'
call plug#end()

" ----- SETTINGS ----

"DO NOT REMOVE, needed for vimwiki
set nocompatible
filetype plugin indent on
syntax on
"
set encoding=UTF-8
set number
set relativenumber
set autoread
set backspace=indent,eol,start
set noruler
set confirm
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hls is
set ic
" set cursorline
set showcmd

set listchars=tab:▸\ ,eol:¬

"Invisible character colors 
" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

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

" ctags config
command! MakeTags !ctags -R .

" generic commands that can be useful
command! Config execute ":e $MYVIMRC"
command! Reload execute "source $MYVIMRC"

" navigation (check | netrw-browse-maps |)
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

if has("autocmd")
	" Enable Relative Numbers Only in Normal Mode
	augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave * set rnu
		autocmd BufLeave,FocusLost,InsertEnter * set nornu
	augroup END
	" force tabs to white spaces in yaml files
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endif

" ----- KEY MAPPING -----

let mapleader = ","
nnoremap Q <nop>
imap jj <Esc>
imap kk <Esc>

" Bind to a fzf-powered command search
nmap cc :Commands!<CR>
nmap // :BLines!<CR>
nmap ?? :Rg!<CR>


" navigating between splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Navigating into Netrw
nnoremap <leader>ee :Lexplore<CR>

" ----- MACROS -----
nnoremap <leader>json V:!python -m json.tool<CR>
nnoremap <leader>bash ggi#!/bin/bash<CR><CR><Esc>
nnoremap <leader>python ggi#!/usr/lib/python2.7<CR><CR><Esc>
nnoremap <leader>rel :set rnu!<CR>
nnoremap <leader>nn :set rnu!<CR>:set nu!<CR>
nnoremap <leader>html :-1read /home/turrel/.vim/templates/html.html<CR>7jwf>a
nnoremap <leader>aa I# <Esc>lgUl
nnoremap <leader>ab I## <Esc>lgUl


" ----- COLORSCHEME -----
" colorscheme gruvbox
" set background=dark

" ----- VIM CHEAT SHEET -----
" moving up and down one line: j, k
" first line, last line, line number: g, G, 8gg
" top of the screen: H
" middle of the screen: M
" bottom of the screen: L

" move half screen: Ctrl+D, Ctrl+U
" move full screen: Ctrl+F, Ctrl+B

" put the cursor on top, center, bottom of the screen: zt, zz, zb

" scroll one line: Ctrl+y, Ctrl+e

" begin of a line: 0, ^
" end of line: $, g_

" move to the 10% of the file: 10%

" search all occurencies of the current word: *
" search and replace in the current document: :%s/old/new/g

" delete to the end of line: D
" change to the end of line: C

" jump to the end of a word: e, E
" jump to the next word: w, W
" jump backwards: b, B
" jump from opening bracket to closing one: %

" finding the next occurence of a character: f, t
" (f includes it in the selection, t does not)

" auto indent: ={motion}
" indent (normal mode): >>{motion} or <<{motion}
" in visual mode, only one > or < is needed

" repeat last edit: .
" undo last edit: u

" simple word completion: Ctrl+n, Ctrl+p
" fuzzy search for existing documents in the current dir and/or subdir:
" Ctrl+x Ctrl+f

" open another file for edition in a new window: :e [path/to/file]
" horizontal split the screen to open another file: :sp [path/to/file]
" vertical split the screen to open another file: :vs [path/to/file]

" open new file in a new tab: :tabe [path/to/file]
" jump between tabs: gt, gT or ngt (with n the tab index starting by 1)
" close current tab: :tabc
" view all tabs: :tabs

" ============
" Surround.vim
" ============
" add surroundings around selection: ys[selection][surroundings]
" change current surroundings with new ones: cs[current][new]
" delete current surroundings: ds[current]

" ===============
" JSON PRETTYFIER
" ===============
" structure json file to be readable: :%!python -m json.tool or ;json

" =============
" Titlecase.vim
" =============
" custom mapping has been made in the
" ~/.vim/plugged/vim-titlecase/plugin/titlecase.vim
" default mapping are: nmap gt, vmap gt and nmap gT
" new mapping is <leader>t, <leader>t and <leader>T

" =============
" Vimwiki.vim
" =============
" :h vimwiki-mappings to see default keybindings
" <Leader>ww to open wiki index
" https://github.com/vimwiki/vimwiki
