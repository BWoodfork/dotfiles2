" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Solarized
syntax enable
set background=dark
colorscheme solarized

" CTRL P Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vimclojure
let vimclojure#WantNailgun = 1

" tab spacing
set tabstop=4
set ts=4
set shiftwidth=4
set autoindent

" Whitespace stripping
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Rainbow Paranthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Soft word wrap
 command! -nargs=* Wrap set wrap linebreak nolist

"Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Use 14pt Monaco
set guifont=Monaco:h14
" Don’t blink cursor in normal mode
set guicursor=n:blinkon0
" Better line-height
" set linespace=8

" Make Vim more useful
set nocompatible
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol
" Highlight current line
set cursorline
:hi CursorLine term=bold cterm=bold guibg=darkred guifg=white

" Ignore case of searches
set ignorecase
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Soft line word wrap
:set wrap linebreak nolist

" Allow backspace in insert mode
set backspace=indent,eol,start


