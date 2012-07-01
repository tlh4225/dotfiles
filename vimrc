set nocompatible
call pathogen#infect()

" Sets how many lines of history VIM has to remember
set history=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
nnoremap ; :

" Fast saving
nmap <leader>w :w!<cr>

" Resave with sudo
cmap w!! w !sudo tee % >/dev/null

" Tab config
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Indent Config
set autoindent
set smartindent
set copyindent

" Editor Configs
set hidden
set nowrap
set number
set shiftround
set showmatch
set ruler

" Whitespace Config
set backspace=eol,start,indent

set so=7
set wildmode=longest:full
set wildignore=*.o,*~,*.pyc,*.DS_Store
set wildmenu
set lazyredraw
set magic
set title

" Search Configuration
set ignorecase
set smartcase
set hlsearch
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

" GUI options that need to be set here first
" Remove exta, useless button bar.
set guioptions-=T
set guioptions+=t

" Encording Setup
set encoding=utf8
set ffs=unix,dos,mac

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.pp :call DeleteTrailingWS()
