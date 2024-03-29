" when indenting with '>', use 4 spaces width
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set autoindent
let g:vim_indent_guides_start_level = 4
" Visualise white-space
set lcs=trail:·,tab:»·

" Clang format options
let g:clang_complete_macros = 1
let g:clang_format#detect_style_file = 1
" Location of the clang-format executable
let g:clang_format#command = "/usr/bin/clang-format"

augroup CLANG_FORMAT
	au!
	au FileType c,cpp,objc nnoremap <buffer>= :<C-u>ClangFormat<CR>
	au FileType c,cpp,objc vnoremap <buffer>= :ClangFormat<CR>
augroup END

augroup RUST_FMT
	au!
	au FileType rust nnoremap <buffer>= :<C-u>RustFmt<CR>
	au FileType rust vnoremap <buffer>= :RustFmtRange<CR>
augroup END
