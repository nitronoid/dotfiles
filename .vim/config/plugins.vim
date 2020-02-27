" plugins here
call plug#begin('~/.vim/bundle')
" Pass the path to set the runtimepath properly.
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'superfunc/usda-syntax'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'kbenzie/vim-spirv'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" All of your Plugins must be added before the following line
call plug#end()            " required

" Use deoplete from the get go
let g:deoplete#enable_at_startup = 1

" Enable lsp
let g:LanguageClient_autoStart = 1
" Use clangd as the server when running c++
let g:LanguageClient_serverCommands = { 'cpp': ['clangd'] }
" Set complete function for deoplete.vim
set completefunc=LanguageClient#complete

" Disassemble SPIRV when editing
let g:spirv_enable_autodisassemble = 1
