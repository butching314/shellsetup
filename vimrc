let mapleader = ","
let maplocalleader = " "

:ino <C-C> <Esc>

" Adds support for shift+tab
  :map <Esc>[Z <s-tab>
  :ounmap <Esc>[Z

" Toggle nerdtree with <leader>1 (Similar to IntelliJ IDEA file browser)
  map <silent> <leader>1 :NERDTreeToggle<CR>
  map <silent> <leader>n :NERDTreeFind<CR>

" Standard vim options
  set autoindent            " always set autoindenting on
  set autoread              " update opened file for external changes"
  set backspace=2           " allow backspacing over everything in insert mode
  set cindent               " c code indenting
  set diffopt=filler,iwhite " keep files synced and ignore whitespace
  set expandtab             " Get rid of tabs altogether and replace with spaces
  set foldcolumn=2          " set a column incase we need it
  set foldlevel=0           " show contents of all folds
  set foldmethod=indent     " use indent unless overridden
  set guioptions-=m         " Remove menu from the gui
  set guioptions-=T         " Remove toolbar
  set hidden                " hide buffers instead of closing
  set history=50            " keep 50 lines of command line history
  set ignorecase            " Do case insensitive matching
  set incsearch             " Incremental search
  set laststatus=2          " always have status bar
  set linebreak             " This displays long lines as wrapped at word boundries
  set matchtime=10          " Time to flash the brack with showmatch
  set nobackup              " Don't keep a backup file
  set nowritebackup         " Disable write backup
  set nocompatible          " Use Vim defaults (much better!)
  set nofen                 " disable folds
  set noswapfile            " disable swp files
  set notimeout             " i like to be pokey
  set ttimeout              " timeout on key-codes
  set ttimeoutlen=100       " timeout on key-codes after 100ms
  set ruler                 " the ruler on the bottom is useful
  set scrolloff=1           " dont let the curser get too close to the edge
  set shiftwidth=2          " Set indention level to be the same as softtabstop
  set shiftround
  set showcmd               " Show (partial) command in status line.
  set showmatch             " Show matching brackets.
  set softtabstop=4         " Why are tabs so big?  This fixes it
  set tabstop=2
  set textwidth=0           " Don't wrap words by default
  set textwidth=200         " This wraps a line with a break when you reach 200 chars
  set virtualedit=block     " let blocks be in virutal edit mode
  set wildmenu              " This is used with wildmode(full) to cycle options

" Use case-smart searching
" " These two options, when set together, will make /-style searches
" " case-sensitive only if there is a capital letter in the search expression.
" " *-style searches continue to be consistently case-sensitive.
  set ignorecase
  set smartcase
  set hlsearch            " highlight the last searched term

" Automatically wrap at 120 characters and set shiftwidth to 4 for Java
autocmd!
autocmd BufNewFile,BufRead *.java setlocal textwidth=200 shiftwidth=4
autocmd BufNewFile,BufRead *.rb setlocal textwidth=200 shiftwidth=2

" Make it obvious where 80 characters is
set textwidth=200
set colorcolumn=+1

call plug#begin('~/.vim/plugged')
  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'djoshea/vim-autoread'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'easymotion/vim-easymotion'
  Plug 'ervandew/supertab'
  Plug 'moll/vim-bbye'
  Plug 'myusuf3/numbers.vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'zxqfl/tabnine-vim'
call plug#end()

" Dracula theme fix
set termguicolors

" Airline customisation
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

" Configure the bookmarks plugin
highlight BookmarkSign ctermbg=NONE ctermfg=160
let g:bookmark_sign = '>>'

"Relative numbers toggle
nnoremap <F3> :NumbersToggle<CR>

" Remove whitespace on save
autocmd BufWritePre * StripWhitespace

" Configure CtrlP
let g:ctrlp_extensions = ['tag']
let g:ctrlp_root_markers = ['.ctrlp', '.cabal-sandbox']
let g:ctrlp_show_hidden = 1
nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap <C-m> :CtrlPMixed<CR>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>r :CtrlPMRUFiles<CR>

" VimBbye Bufdelete
:nnoremap <Leader>q :Bdelete<CR>

" Move to next buffer with Tab and previous buffer with Shift-Tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
