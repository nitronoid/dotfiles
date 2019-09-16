" Force neovim
set nocompatible

" Source all configs
source ~/.vim/config/plugins.vim
source ~/.vim/config/color_scheme.vim
source ~/.vim/config/syntax_highlighting.vim
source ~/.vim/config/indentation.vim
source ~/.vim/config/backup.vim
source ~/.vim/config/search.vim
source ~/.vim/config/language.vim
source ~/.vim/config/line.vim
source ~/.vim/config/clang_format.vim

" Set the python executables
let g:python_host_prog = "python2.7"
let g:python3_host_prog = "python3.7"
