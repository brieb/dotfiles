" Brief help
"
" :BundleInstall  - install bundles (won't update installed)
" :BundleInstall! - update if installed
"
" :Bundles foo    - search for foo
" :Bundles! foo   - refresh cached list and search for foo
"
" :BundleClean    - confirm removal of unused bundles
" :BundleClean!   - remove without confirmation
"
" see :h vundle for more details
" or wiki for FAQ
" Note: comments after Bundle command are not allowed..

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'msanders/snipmate.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tsaleh/vim-align'
"Bundle 'majutsushi/tagbar'
"Bundle 'wincent/Command-T'
"Bundle 'Shougo/unite.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'vim-scripts/project.tar.gz'
Bundle 'xolox/vim-session'
"Bundle 'cschlueter/vim-ir_black'
"Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
"Bundle 'Shougo/neocomplcache'
"Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'fholgado/minibufexpl.vim'
Bundle "sjl/gundo.vim"

"vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'taglist-plus'
"Bundle 'ZoomWin'
"Bundle 'bufexplorer.zip'
Bundle 'YankRing.vim'

" requires sprecial ruby stuff
"Bundle 'LustyJuggler'
"Bundle 'LustyExplorer'

"Bundle 'jellybeans.vim'
Bundle 'bufkill.vim'
"Bundle 'tir_black'
"Bundle 'AutoClose'
"Bundle 'marklar.vim'

"non github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required! 

"Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/L9'
