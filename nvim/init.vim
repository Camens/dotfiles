" =
" Global

filetype plugin indent on  " detect plugin filetypes
syntax enable              " syntax highlighting

" nvim-plug
call plug#begin('~/.config/nvim/plugged')

" util
Plug 'munshkr/vim-tidal'
Plug 'cohama/lexima.vim'

" language
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
" Plug 'supercollider/scvim'
Plug 'davidgranstrom/scnvim', { 'do': ':UpdateRemotePlugins' }

" colorschemes
Plug 'ewilazarus/preto'
Plug 'trevordmiller/nova-vim'
Plug 'pgdouyon/vim-yin-yang'

call plug#end()

let mapleader="\<space>"            " set mapleader
let maplocalleader=","
set mouse=a                         " enable mouse

" enable true color for nvim
if has('nvim')
  set inccommand=nosplit " preview changes (:s/) incrementally
  set termguicolors
else
  " neovim already does this by default, ~/.local/share/nvim/swap
  set directory^=$HOME/.vim/.swap//   " put all swap files in one place
  set ttyfast " assume fast terminal connection
endif

" editing
set backspace=2                     " allow backspacing over indent, eol, and the start of an insert
set virtualedit=all                 " be able to access all areas of the buffer
set hidden                          " be able to hide modified buffers
set complete-=i                     " where to look for auto-completion
set clipboard=unnamed               " yank to system-wide clipboard
set autoread                        " reload buffers changed from the outside
set completeopt-=preview            " don't display scratch buffer for completion
set formatoptions+=rj               " auto insert comments from insert mode, remove comment leader when joining lines

" appearance
" set fillchars=                    " remove the fillchars from folds and splits
set listchars=tab:>-,trail:–,nbsp:• " custom list chars
set nostartofline                   " keep the cursor at the current column when moving
set scrolloff=4                     " keep a distance of from the cursor when scrolling
set wrap                            " wrap words
set linebreak                       " break at word boundries for wrapped text
" set textwidth=80                    " be cool, old school 4:3 text width
" set list                          " show unprintable characters
" set relativenumber
set number

" searching
set ignorecase                      " ignore case in search patterns
set incsearch                       " incrementally match the search
set smartcase                       " overrides 'ignorecase' if search pattern contains an upper char
set showmatch                       " highlight search matches while typing

" misc
set ttyfast                         " assume fast terminal connection
set wildmenu                        " enhanced command line completion
set wildignorecase                  " be smart case-sensitive
set diffopt+=vertical               " use vertical diffs by default
set laststatus=2                    " always display a status line
" set autochdir                     " change to cwd of current file
set visualbell                      " turn off error beep/flash
set regexpengine=0                  " use the improved regexpengine
set timeoutlen=1000                 " shorter timeout lenght for keystrokes
set ttimeoutlen=50                  " make esc work faster
set lazyredraw                      " don't redraw screen for macros

" indenting/formating
set autoindent                      " indent even if we have no filetype rules
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab                       " use whitespace instead of tabs
set shiftround                      " round indent to multiples of 'shiftwidth'
" set nowrap

" colorscheme/appearance
set background=dark
colorscheme sleeping
" colorscheme obs

" use par to format text
if executable("par")
    set formatprg=par\ -w80qr
endif

" source the manpage plugin
source $VIMRUNTIME/ftplugin/man.vim

" =
" Key Mappings

" be able to navigate wrapped lines
nnoremap j gj
nnoremap k gk

inoremap jk <esc>
inoremap § <esc>

" automatically check file type stuff for SuperCollider
au BufNewFile,BufRead *.scd
    \ *.scd set ft=scd

" Disable Arrow keys in Escape mode
 map <up> <nop>
 map <down> <nop>
 map <left> <nop>
 map <right> <nop>

" Disable Arrow keys in Insert mode
 imap <up> <nop>
 imap <down> <nop>
 imap <left> <nop>
 imap <right> <nop>
