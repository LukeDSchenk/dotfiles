" Make Vim use the indent of the previous line for a newly created line.
set autoindent
" Set backspace options.
"   eol    - allow backspacing over line breaks
"   indent - allow backspacing over autoindent
"   start  - allow backspacing over the start of insert
set backspace=eol,indent,start
" Display a vertical line at 80 characters.
set colorcolumn=80
" Set options for Insert mode completion.
"	menuone	 - use the popup menu even when there is only one match
"	noinsert - do not insert any text for a match until the user selects a match from the menu
"	noselect - do not select a match in the menu; force the user to select one
set completeopt=menuone,noinsert,noselect
" Set the Nerd Font.
set guifont=Hack\ Regular\ Nerd\ Font\ Complete\ 11
" Keep the last 1000 commands and search patterns in the history.
set history=1000
" Highlight matches with the last used search pattern.
set hlsearch
" Ignore case when searching for a pattern.
set ignorecase
" Display matches for a search pattern while you type.
set incsearch
" Disable the mouse.
set mouse=
" Disable error bells.
set noerrorbells
" Display line numbers.
set number
" Display relative line numbers.
set relativenumber
" Display the current cursor position.
set ruler
" Set the number of lines to always keep above or below the cursor when scrolling, kind of like padding.
set scrolloff=8
" Set this option so that the line number will display along with Git changes.
set signcolumn=yes
" Search case is smart (will search for exact match if capital letters are present).
"	NOTE: ONLY WORKS IF `ignorecase` IS SET.
set smartcase
" Set number of space characters inserted after indentation.
set shiftwidth=4
" Display an incomplete command in the lower right corner.
set showcmd
" Display the current mode.
set showmode
" Set number of spaces in tab while editing.
set softtabstop=4
" Set tab as four spaces.
set tabstop=4
" Set terminal colors.
set termguicolors

" Switch on syntax highlighting.
syntax on
" Turn on filetype detection, using filetype plugin and indent files.
"	plugin - enable loading the plugin files for specific file types.
"		This may be done by creating a configuration file for a file type,
"		ie. "~/.config/nvim/ftplugin/rust.vim" for Rust file types.
"	indent - enable loading the indent file for specific file types.
filetype plugin indent on

" -------------------------
" Load plugins via vim-plug
" -------------------------
"
call plug#begin('~/.local/share/nvim/plugged')
" Python Black formatter.
Plug 'psf/black', { 'branch': 'stable' }
" The best theme.
Plug 'morhetz/gruvbox'
" A Markdown preview plugin.
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" The official Rust Vim plugin - it's only loaded when a Rust file is opened.
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Solidity syntax highlighting plugin.
Plug 'thesis/vim-solidity', {'branch': 'main' }
call plug#end()


" -----------------------------
" Configure colorschemes/themes
" -----------------------------
"
" Configure default colorscheme.
"colorscheme edge
"colorscheme hybrid
colorscheme gruvbox
"	Configure Ayu theme.
let g:ayucolor = "mirage"
"   Configure gruvbox OG theme.
let g:gruvbox_contrast_dark = "medium"
"	Configure gruvbox-material theme.
let g:gruvbox_material_background = 'soft'
"	Configure hybrid theme.
set background=dark

" Configure Airline theme.
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'bubblegum'
let g:airline_theme = 'gruvbox'
" Configure Airline tabline extension.
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" ------------------------------
" Configure Black to run on save
" ------------------------------
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
