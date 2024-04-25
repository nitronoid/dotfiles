" plugins here
call plug#begin('~/.vim/bundle')
" Pass the path to set the runtimepath properly.
Plug 'echasnovski/mini.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'HiPhish/rainbow-delimiters.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'kbenzie/vim-spirv'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lambdalisue/suda.vim'
Plug 'embear/vim-localvimrc'
" All of your Plugins must be added before the following line
call plug#end()            " required

" Disassemble SPIRV when editing
let g:spirv_enable_autodisassemble = 1

" Don't ask to load lvimrc, just do it
let g:localvimrc_ask = 0
