set nocompatible
call pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Tab config
set tabstop=2     " width of tab character
set softtabstop=2 " fine tune white space to be inserter
set shiftwidth=2  " custom space for indentatino in normal mode
set expandtab     " Use spaces instead of tabs
set smarttab      " use tabs properly

" Indent Config
set autoindent
set smartindent
set copyindent

" Editor Configs
set hidden        " Show hidden characters to help whitespace tracking
set nowrap        " show lines as they are
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ruler         " Always show position

" Whitespace Config
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Performance and Regex
" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Search Configuration
set ignorecase    " ignore case when searching
set smartcase     " become case sensitive if you have capitals
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Useability Options
set title         " change the terminal's title

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark
set t_Co=256
set gfn=Menlo:h13
let g:solarized_termcolors=256
colorscheme solarized

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

nnoremap ; :

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Allow save as sudo
cmap w!! w !sudo tee % >/dev/null

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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
