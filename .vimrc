" shut off the old vi compatibility garboo!
set nocompatible

" show the current file position and percentage in the status bar
set ruler

" does some fun tab completion stuffs when in command mode
set wildmenu

" 
set backspace=indent,eol,start

" change the leader to a comma
let mapleader=","


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
set foldmethod=syntax
" don't fold anything by default
set foldlevel=100

" pathogen
call pathogen#infect()
filetype on
filetype indent on
filetype plugin on

" enable syntax highlighting
syntax enable
" go all the way back for redrawing. in case we're ass deep in nested ifs
syntax sync fromstart


" last status, set up a status line
set ls=2

" show tabs and newlines all fancy-like
set list
set listchars=tab:▸\ ,eol:¬


" snippets stuff
let snips_author='Jeremy Kitchen'

" colors!
set background=dark
color blackboard


" make it so emails wrap at 72 chars
au FileType mail set tw=72


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


" usually used in emails, delete the rest of the file:
nnoremap <leader>d VGd

" open a new window and switch to it
nnoremap <leader>w <C-w>v<C-w>l

" navigate windows like normal
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" show cursorline in current window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
set cursorline


" put git info and funstuffs into status line
" don't forget to escape spaces! it doesn't seem to like having double quotes
" around the whole thing
set statusline=%<%f%=\ %{fugitive#statusline()}\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
" change the color of the modified flag so it's on a red background
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" swap files are annoying, and I'm sure dropbox agrees!
set noswapfile

set modelines=5

" don't show .pyc files in command-t and the like, they are compiled python
" files, similar to .o and such in C
set wildignore+=*.pyc
