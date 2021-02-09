" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Turn on status bar by default
set ruler                       "Add row/col info to status bar
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
"let g:Powerline_symbols = 'fancy' " Turn on fancy powerline symbols

if !has('gui_running')
  set clipboard=unnamed
endif

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

"highlight nonascii characters
highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"


" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on


" ================ Folds ============================

set foldmethod=syntax   "fold based on syntax
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
set foldlevelstart=99   "deepest fold is 99 levels

nmap z1 zC :set foldlevel=1<cr>
nmap z2 zC :set foldlevel=2<cr>
nmap z3 zC :set foldlevel=3<cr>
nmap z4 zC :set foldlevel=4<cr>
nmap z5 zC :set foldlevel=5<cr>
nmap z6 zC :set foldlevel=6<cr>
nmap z7 zC :set foldlevel=7<cr>
nmap z8 zC :set foldlevel=8<cr>
nmap z9 zC :set foldlevel=9<cr>
nmap z0 zC :set foldlevel=99<cr>
nmap <space> za
let xml_syntax_folding=1

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Solarized ========================
"let g:solarized_termcolors=16
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized

if has("gui_running")
  "tell the term has 256 colors

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190

  set guifont=Inconsolata-g\ for\ Powerline:h14,aInconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
  set t_Co=16
endif

highlight Error term=bold,reverse ctermfg=116 ctermbg=160 gui=bold,reverse guifg=#cb4b16 guibg=#99000




" ================ Other ========================

" always have mouse support
:set mouse=a 
" Open dir of current file
nmap <leader>u :Ex<cr>

nmap <leader>f :set filetype=xml<cr>:%!xml fo -o<cr>
vmap <leader>f :set filetype=xml<cr>:!xml fo -o<cr>

nmap <leader>j :set filetype=json<cr>:%!underscore print<cr>
vmap <leader>j :!underscore print<cr>
nmap <leader><leader>j :set filetype=json<cr>:%!underscore --outfmt dense print<cr>
vmap <leader><leader>j :!underscore --outfmt dense print<cr>
nmap <leader>J :set filetype=json<cr>:%!underscore --outfmt stringify print<cr>
vmap <leader>J :!underscore --outfmt stringify print<cr>

set pastetoggle=<f2>

nmap <leader>z :%s/expected:</\rEXPECTED:\r/g<cr>:%s/ but was:</\r\rACTUAL:\r/g<cr>

nmap <leader>v :vnew<cr> 

nmap <leader>t :Tabularize /\t<cr> 
nmap <leader>/ :noh<cr>
nmap /// :noh<cr>
nmap ; :

set listchars=tab:▸\ ,eol:¬,trail:·
command! -nargs=* Wrap set wrap linebreak nolist
command! -nargs=* WrapOff set wrap linebreak list

" DIFF help
:set diffopt=vertical
function! s:diffBufferWithClipboard() 
  :diffsplit /tmp/diff
  :put +  
  :diffupdate
endfunction
command! DiffClip call s:diffBufferWithClipboard() 
command! -nargs=* DiffSplit diffsplit /tmp/diff 

" Comment out if not a fan of hiding quotes in json files
let g:vim_json_syntax_conceal = 1
