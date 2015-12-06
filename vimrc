"Init function for pathogen"
execute pathogen#infect()

"dont wrap lines
set nowrap

"enable mouse mode
set mouse=a

"Default to system clipboard
set clipboard=unnamed

"Display cljx files as clojure files
au BufNewFile,BufRead *.cljx set filetype=clojure

"Python settings
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

"No Esc key
"inoremap <Esc> <NOP>

"Search while typing
:set incsearch

"Eclim
set nocompatible

"CtrlP max height"
let g:ctrlp_max_height = 50

syntax enable

"Color scheme"
syntax enable
set background=dark
colorscheme solarized

"Change leader key"
let mapleader=","

"Eval clojure expressions with fireplace.vim"
map <leader>E :%Eval<cr>
map <leader>e :Eval<cr>
"Requres clojure.tools.namespace dependency in the project.clj
" map <leader>R :Eval (require '[clojure.tools.namespace.repl]) (clojure.tools.namespace.repl/refresh)<cr>
map <leader>t :RunTests<cr>

let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
map <leader>f :CtrlPFunky<cr>

""
set backspace=indent,eol,start

""
filetype plugin indent on

"Show line numbers"

set number
""
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
"Turn highlighting for search results on""
set hlsearch

"Highlight searches and unhighlight them with return"
:nnoremap <CR> :nohlsearch<cr>

set wildmode=longest,list
set wildmenu

"Always show status bar"
set laststatus=2
"Show coordinates in lower right corner"
set ruler

"Ignore compiled java files in ctrlp"
let g:ctrlp_custom_ignore = '.class$'

"Run the current file with ruby -- mainly for Minitest"
map <leader>m :w\|:!clear; ruby %:p<cr>

"Open/Close NERDTree"
map <leader>n :NERDTreeToggle<cr>

"Set NERDTree width"
" let g:NERDTreeWinSize = 45

"Jump to last cursor position unless it's invalid or in an event handler"
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif

"Multipurpose Tab Key -- indent if at the beginning of a line, else do completion
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

"Quit NERDTree if it is the last open buffer"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%128v.*/
highlight LineLengthError ctermbg=black guibg=black
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

let g:gitgutter_sign_column_always = 1

function! OpenAlternateRubyFileInVerticalSplit()
  :let l:spec=system("alternate_file " . expand("%:p"))
  if l:spec != "__FAIL__"
    execute "vs " . l:spec
  endif
endfunction

" Copy current file path to clipboard
:command! CP let @+ = expand('%:p')

" Alt Ruby
nnoremap <leader>at :AlternateToggle<cr>
nnoremap <leader>av :AlternateVerticalSplit<cr>
nnoremap <leader>as :AlternateHorizontalSplit<cr>

" Run rspec tests
map <leader>r :!clear && rspec %:p<cr>

" Search case insensitive
:set ignorecase
