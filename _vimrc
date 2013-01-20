filetype off

if has("win32") || has("win64")
	let $VIMFILES="vimfiles"
else
	let $VIMFILES=".vim"
endif

"Vundle
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive' 
Bundle 'tpope/vim-pastie'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'kana/vim-fakeclip'
Bundle 'Lokaltog/vim-powerline'
Bundle 'withgod/vim-sourcepawn'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'sjl/gundo.vim'

filetype plugin indent on

let g:tex_flavor='latex'

set autoindent
set backupdir=$HOME/$VIMFILES/backup
set cursorline
set encoding=utf-8
set guioptions=
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set modeline
set noerrorbells
set nowrap
set number
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set wildmenu
set wildmode=longest,list

try
	lang en_CA
catch
endtry

syntax enable
set background=dark
colorscheme jbterm
let g:Powerline_colorscheme = 'solarized256'

if has("gui_running") && (has("win32") || has("win64"))
	set guifont=Consolas:h11:cANSI
endif

map <Up> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Down> <Nop>
cmap <Up> <Nop>
cmap <Left> <Nop>
cmap <Right> <Nop>
cmap <Down> <Nop>

inoremap jk <esc>`^
nnoremap j gj
nnoremap k gk
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

let mapleader = " "

nnoremap <silent> <leader><cr> :nohlsearch<cr>
nnoremap <silent> <leader>l :setlocal list!<cr>
nnoremap <silent> <leader>w :setlocal wrap!<cr>
nnoremap <silent> <leader>cd :cd %:p:h<cr>
nnoremap <silent> <leader>ss :setlocal spell!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
set pastetoggle=<F5>

autocmd! FileType sourcepawn setlocal makeprg=$SM/scripting/spcomp\ %
