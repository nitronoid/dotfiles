" Force neovim
set nocompatible

" List of configuration files
let configs = [
\   'plugins.vim',
\   'color_scheme.vim',
\   'syntax_highlighting.vim',
\   'indentation.vim',
\   'backup.vim',
\   'search.vim',
\   'language.vim',
\   'line.vim',
\   'terminal.vim',
\   'clang_format.vim'
\]

" Configuration directory
let s:vim_home = '~/.vim/config'

" Source all configuration files
for f in configs
  exec 'source '.s:vim_home.'/'.f
endfor

" Set the python executables
let g:python_host_prog = "python2.7"
let g:python3_host_prog = "python3.7"



