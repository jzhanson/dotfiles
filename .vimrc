" Don't forget to run vim +PluginInstall +qall when exporting this .vimrc!
" Ensure that we are in modern vim mode, not backwards-compatible vi mode

set nocompatible
set t_Co=256 " 256 colors
set encoding=utf-8 " UTF-8 character encoding

filetype off " required for Vundle plugin manager

" Use Menlo for Powerline
set guifont=Menlo\ for\ Powerline

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ---------- Making Vim look good -----------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----------- Working with Git --------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" vim-c0 plugin on Github repo
Plugin 'cmugpi/vim-c0'

call vundle#end()

" -------- Plugin-specific settings
"  altercation/vim-colors-solarized settings ------
"  Toggle to "light" for light colorscheme
"set background=light


"colorscheme solarized
"let g:solarized_termcolors=256


" ----------- bling/vim-airline settings -------
" Always show statusbar
set laststatus=2
" Fancy arrow symbols
let g:airline_powerline_fonts = 1
"Show PASTE if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extentions#tabline#enabled=1
" Use solarized theme for Airline status bar
"let g:airline_theme='solarized'

" -------- airblade/vim-gitgutter settings -------
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extentions#hunks#non_zero_only = 1

" Helpful information: cursor position in bottom right, line numbers on
" left
set ruler
" Show commands
set showcmd

" Incremental search and highlight search
set incsearch
set hlsearch
set ignorecase
set smartcase

" No line numbers
set nonumber
set backspace=indent,eol,start " Better backspacing
set scrolloff=5 "Never scroll off
set wildmode=longest,list "Better unix-like tab completion
set clipboard=unnamed "Copy and paste from system clipboard

" Wrapping triviata
set lazyredraw "Don't redraw while running macros, faster
set wrap "Visually wrap lines
set linebreak "Only wrap on 'good' characters for wrapping
set ttyfast "Speed up vim
set nostartofline "Vertical movement preserves horizontal position

set ruler " Show bottom ruler
set equalalways " Split windows equal size
set formatoptions=croq " Enable comment line auto formatting
set title "Set window title to file
set titleold=""
set titlestring=VIM:\ %F
set showmatch " Highlight matching braces

" Enable filetype detection and syntax highlighting
syntax on
filetype on
filetype indent on
filetype plugin on

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Indent as intelligently as vim knows how
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Show multicharacter commands as they are being typed
set showcmd

" Fuzzy find fzf
set rtp+=/usr/local/opt/fzf

" Make these commonly mistyped commands still work
command! WQ wq
command! Wq wq
command! W w
command! Q q

" Make navigating long, wrapped lines behave like normal lines - jez
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$
noremap <silent> ^ g^
noremap <silent> _ g_

