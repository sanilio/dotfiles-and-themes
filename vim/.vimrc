" Enable syntax highlighting
syntax on

" Set tab width to 4 spaces for Python
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Set tab width to 4 spaces for Go
autocmd FileType go setlocal noexpandtab shiftwidth=4 softtabstop=4

" Enable line numbering
set number

" Enable auto-indentation
set autoindent

" Enable the mouse
set mouse=a

" Set to auto read when a file is changed from the outside
set autoread

" For Python, use black for formatting
autocmd FileType python AutoFormatBuffer black

" For Go, use gofmt for formatting
autocmd FileType go AutoFormatBuffer gofmt

" Set the colorscheme to gruvbox
set termguicolors