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
\   'providers.vim',
\   'clang_format.vim'
\]

" Configuration directory
let s:vim_home = '~/.vim/config'

" Source all configuration files
for f in configs
  exec 'source '.s:vim_home.'/'.f
endfor


