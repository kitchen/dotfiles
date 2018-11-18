set nocompatible
filetype off
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin('VundleVim/Vundle.vim')
Plugin('altercation/vim-colors-solarized')
set rtp+=/usr/local/opt/fzf
Plugin('junegunn/fzf.vim')
Plugin('itchyny/lightline.vim')
Plugin 'editorconfig/editorconfig-vim'


call vundle#end()
filetype plugin indent on

" does some fun tab completion stuffs when in command mode
set wildmenu

set backspace=indent,eol,start

" change the leader to a comma
let mapleader=","

let g:lightline = {
	\ 'colorscheme': 'solarized'
	\ }


" --- search stuff
" highlight past searches
set hlsearch
" search while I'm typing!
set incsearch
" case insensitive searches...
set ignorecase
" unless I Have A CapitAl LeTTer
set smartcase
" leader-space to clear out past searches
nnoremap <leader><space> :noh<cr>
" use tab to go between bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" don't fucking unindent my comments, stupid vim
:inoremap # X#

" line numbers!
set number

" autoindent
set ai
" and be ... smart about it? meh
set si

" make sure there are at least 5 lines above and/or below the cursor
" at all times, when scrolling or searching, this is handy
set scrolloff=5

" fold based off the syntax highlighting
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
set nofoldenable

" enable syntax highlighting
syntax enable
" go all the way back for redrawing. in case we're ass deep in nested ifs
syntax sync fromstart

" last status, set up a status line
set laststatus=2

" show tabs and newlines all fancy-like
set list
set listchars=tab:▸\ ,eol:¬
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list! number!<CR>

" colors!
let g:solarized_visibility="low"
color solarized

" wrap lines
set wrap
" I like these options better
set formatoptions=qrn1

" be a dick to myself and disable the arrow keys. gods be damned!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" I'm not sure the difference here, but I'm like to find out
nnoremap j gj
nnoremap k gk

" shut off f1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" no more :WQ
nnoremap ; :


" make a second window beside this one and switch to it
nnoremap <leader><bar> :vnew<enter>
" make a second window under this one and switch to it
nnoremap <leader>- :new<enter>

" navigate windows like normal
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" show cursorline in current window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
set cursorline

" swap files are annoying, and I'm sure dropbox agrees!
set noswapfile

set modelines=5

