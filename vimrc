" Pathogen
execute pathogen#infect()

" 1 tab to 2 space for ruby
" set tabstop=2
" set softtabstop=2
" set shiftwidth=2
" set expandtab
" Softtabs, 2 spaces
" set tabstop=2
" set shiftwidth=2
" set shiftround
" set expandtab

" comma for leader key
let mapleader=","

" Solarized
syntax enable
set background=dark
colorscheme solarized

" CTRL P Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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

"Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Don’t add empty newlines at the end of files
set binary
set noeol

" Use 14pt Monaco
set guifont=Monaco:h14
" Don’t blink cursor in normal mode
set guicursor=n:blinkon0

" Make Vim more useful
set nocompatible
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don’t add empty newlines at the end of files
set binary
set noeol

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

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

" Use Mouse
:set mouse=a

" Copy current file path to clipboard
:command! CP let @+ = expand('%:p')

" Create newline outside of insert mode using Shift + Enter
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Old regex for Ruby (fixes lag when using UsersSystem)
set re=1

" alt ruby plugin
nnoremap <leader>at :AlternateToggle<cr>
nnoremap <leader>av :AlternateVerticalSplit<cr>
nnoremap <leader>as :AlternateHorizontalSplit<cr>

filetype plugin indent on     " required!
syntax on