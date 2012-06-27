set nocompatible
call pathogen#infect()

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

set autoindent
set smartindent
set copyindent

set hidden
set nowrap
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis

" Search Configuration
set ignorecase
set smartcase

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set title                " change the terminal's title

filetype plugin indent on
autocmd filetype python set expandtab

syntax on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set gfn=Menlo:h13

nnoremap ; :

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Allow save as sudo
cmap w!! w !sudo tee % >/dev/null
