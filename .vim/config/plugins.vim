" plugins here
call plug#begin('~/.vim/bundle')
" Pass the path to set the runtimepath properly.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kien/rainbow_parentheses.vim'
"Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'superfunc/usda-syntax'
"Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'kbenzie/vim-spirv'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
" All of your Plugins must be added before the following line
call plug#end()            " required

" Disassemble SPIRV when editing
let g:spirv_enable_autodisassemble = 1
