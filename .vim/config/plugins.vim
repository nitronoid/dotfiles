" plugins here
call plug#begin('~/.vim/bundle')
" Pass the path to set the runtimepath properly.
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'neomake/neomake'
Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'superfunc/usda-syntax'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'kbenzie/vim-spirv'
" All of your Plugins must be added before the following line
call plug#end()            " required

" Run neomake whenever writing the buffer to file
call neomake#configure#automake('w')

" Disassemble SPIRV when editing
let g:spirv_enable_autodisassemble = 1
