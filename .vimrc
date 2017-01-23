" Visual Settings
colorscheme elflord	" good colorscheme
syntax enable		" enable syntax coloring
set number		" show line numbers
set ruler		" shows line and column #'s
set cursorline		" underlines current line
set bg=dark

" Behaviour Settings
set nocompatible
set noerrorbells
filetype indent on	" filetype-specific indentation
set wildmenu		" menu for command tab-completion
set showmatch		" matching parentheses/brackets are highlighted
set scrolloff=5		" Can see atleast five lines above and below cursor
set nowrap		" Disables File Wrapping
set autoindent		" Enable Auto Indentation
set bs=2		" Fixes backspace behaviour

" Set leader variable for more custom commands
let mapleader = ","
let g:mapleader = ","

" Search Settings
set ignorecase
set incsearch		" search as characters are entered
set hlsearch		" highlight matches on search
" Clear search highlighting with control-h
nnoremap <silent> <C-h> :nohl<CR><C-h>

" Avoiding Long Lines
set cc=80
highlight ColorColumn ctermbg=7
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h,java} set expandtab
au BufRead,BufNewFile *.{c,h,java} set shiftwidth=2
au BufRead,BufNewFile *.{c,h,java} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8
