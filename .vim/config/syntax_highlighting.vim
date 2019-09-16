" Better template syntax highlighting
let g:cpp_experimental_template_highlight = 1

" Enable rainbow parentheses
au VimEnter * RainbowParenthesesActivate
" Round disabled for CMakeLists.txt support...
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons
" Max depth for the Rainbow Parentheses
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Enable CUDA syntax highlighting
au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda

" Enable USD syntax highlighting
au BufRead,BufNewFile *.usd set filetype=usda
au BufRead,BufNewFile *.usda set filetype=usda
" Load the syntax file
autocmd FileType usda source ~/.vim/bundle/usda-syntax/vim/usda.vim

