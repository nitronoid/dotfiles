" Force neovim
set nocompatible

" List of configuration files
let configs = [
\   'navigation.vim',
\   'language.vim',
\   'search.vim',
\   'backup.vim',
\   'indentation.vim',
\   'providers.vim',
\   'line.vim',
\   'plugins.vim',
\   'color_scheme.vim',
\   'terminal.vim',
\   'syntax_highlighting.vim',
\   'clang_format.vim'
\]

" Configuration directory
let s:vim_home = '~/.vim/config'

" Source all configuration files
for f in configs
  exec 'source '.s:vim_home.'/'.f
endfor


