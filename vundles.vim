set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'abolish.vim'
Bundle 'ack.vim'
"Bundle 'actionscript.vim'
"Bundle 'AutoTag'
"Bundle 'commentary.vim'
"Bundle 'Command-T'
"Bundle 'fugitive.vim'
"Bundle 'Gundo'
"Bundle 'instant-markdown.vim'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'LustyJuggler'
Bundle 'matchit.zip'
"Bundle 'neocomplcache'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'powerline'
"Bundle 'ragtag.vim'
"Bundle 'repeat.vim'
"Bundle 'scratch.vim'
"Bundle 'ShowMarks'
Bundle 'Solarized'
"Bundle 'surround.vim'
"Bundle 'Syntastic'
Bundle 'Tabular'
"Bundle 'VimOutliner'
Bundle 'xml.vim'
"Bundle 'YankRing.vim'
"Bundle 'visualstar.vim'
"Bundle 'vim-fireplace'
"Bundle 'vim-classpath'
"Bundle 'vim-clojure-static'
Bundle 'vim-json-bundle'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
