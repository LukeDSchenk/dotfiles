set number
set relativenumber
set ruler

" Sets background to pure black. I really wanna try this on an OLED laptop!!!
" Ensure this line is placed before any plugin settings or color scheme settings
" autocmd ColorScheme * highlight Normal guibg=#000000

" Begin plugins.
call plug#begin()

" Code formatters.
Plug 'psf/black', { 'branch': 'stable' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" Gruvbox theme.
" Plug 'morhetz/gruvbox'

" Zen mode.
Plug 'folke/zen-mode.nvim'

call plug#end()
" End plugins.

" Configure Mewnokai theme.
" Load custom Lua colorscheme
lua dofile(vim.fn.stdpath('config') .. '/lua/colors/mewnokai.lua')

" Configure tab length. Expandtab makes tabs spaces.
set tabstop=4
set shiftwidth=4
set expandtab

" Configure Black to run on save
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

