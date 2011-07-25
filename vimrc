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
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
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

"vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'taglist-plus'
"Bundle 'ZoomWin'
Bundle 'LustyJuggler'
Bundle 'LustyExplorer'
"Bundle 'jellybeans.vim'
Bundle 'bufkill.vim'
Bundle 'tir_black'
"Bundle 'AutoClose'
"Bundle 'marklar.vim'

"non github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required! 
"
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

syntax on
set number
set hidden

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

let mapleader="f"
nnoremap <C-f> a
vnoremap <C-f> <Esc>gV
onoremap <C-f> <Esc>
inoremap <C-f> <Esc>
"au VimEnter * map  <C-l> <Esc>
"au VimEnter * imap <C-l> <Esc>
"au VimEnter * vmap <C-l> <Esc>

set autoindent
set smartindent
filetype plugin indent on

set ruler

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set background=dark
"colorscheme jellybeans
colorscheme tir_black 
"colorscheme dante

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
"let NERDTreeChDirMode=2

" make uses real tabs
au FileType make set noexpandtab

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" Enable syntastic syntax checking
"let g:syntastic_enable_signs=1
"let g:syntastic_quiet_warnings=1

set showcmd
set showmode

"set list

set wrap        "dont wrap lines
"set colorcolumn=+1 "mark the ideal max text width

"undo settings
set undodir=~/.vim/undofiles
set undofile

"let g:fuf_modesDisable = []
"let g:fuf_mrufile_maxItem = 400
"let g:fuf_mrucmd_maxItem = 400
"nnoremap <silent> fb     :FufBuffer<CR>
"nnoremap <silent> ffb    :FufFileWithCurrentBufferDir<CR>
"nnoremap <silent> ffc    :FufFileWithFullCwd<CR>
""nnoremap <silent> ff     :FufFile<CR>
""nnoremap <silent> fl     :FufCoverageFileChange<CR>
""nnoremap <silent> fL     :FufCoverageFileChange<CR>
""nnoremap <silent> f<C-l> :FufCoverageFileRegister<CR>
"nnoremap <silent> fdb     :FufDirWithCurrentBufferDir<CR>
"nnoremap <silent> fdc     :FufDirWithFullCwd<CR>
"nnoremap <silent> f/ :FufDir<CR>
""nnoremap <silent> fn     :FufMruFile<CR>
""nnoremap <silent> fN     :FufMruFileInCwd<CR>
""nnoremap <silent> fm     :FufMruCmd<CR>
"nnoremap <silent> fbf     :FufBookmarkFile<CR>nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
"vnoremap <silent> fbs    :FufBookmarkFileAddAsSelectedText<CR>
"nnoremap <silent> fbd     :FufBookmarkDir<CR>
"nnoremap <silent> f<C-i> :FufBookmarkDirAdd<CR>
"nnoremap <silent> ft     :FufTag<CR>
""nnoremap <silent> fT     :FufTag!<CR>
"nnoremap <silent> f<C-]> :FufTagWithCursorWord!<CR>
"nnoremap <silent> f,     :FufBufferTag<CR>
"nnoremap <silent> f<     :FufBufferTag!<CR>
"vnoremap <silent> f,     :FufBufferTagWithSelectedText!<CR>
"vnoremap <silent> f<     :FufBufferTagWithSelectedText<CR>
"nnoremap <silent> f}     :FufBufferTagWithCursorWord!<CR>
"nnoremap <silent> f.     :FufBufferTagAll<CR>
"nnoremap <silent> f>     :FufBufferTagAll!<CR>
"vnoremap <silent> f.     :FufBufferTagAllWithSelectedText!<CR>
"vnoremap <silent> f>     :FufBufferTagAllWithSelectedText<CR>
"nnoremap <silent> f]     :FufBufferTagAllWithCursorWord!<CR>
"nnoremap <silent> fg     :FufTaggedFile<CR>
"nnoremap <silent> fG     :FufTaggedFile!<CR>
"nnoremap <silent> fo     :FufJumpList<CR>
"nnoremap <silent> fp     :FufChangeList<CR>
"nnoremap <silent> fq     :FufQuickfix<CR>
"nnoremap <silent> fl     :FufLine<CR>
"nnoremap <silent> fh     :FufHelp<CR>
"nnoremap <silent> fe     :FufEditDataFile<CR>
"nnoremap <silent> fr     :FufRenewCache<CR>

nnoremap <C-a> 0
nnoremap <C-e> $
inoremap <C-a> <Esc>0I
inoremap <C-e> <Esc>$A

"nmap <silent> <Leader>T :CommandT<CR>
"nmap <silent> <Leader>B :CommandTBuffer<CR>
nmap <silent> <Leader>t :TlistToggle<CR>

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> h <C-w><
map <silent> j <C-W>-
map <silent> k <C-W>+
map <silent> l <C-w>>
" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> s :split<CR>
map <silent> v :vsplit<CR>
" Maps Alt-[n,p] for moving next and previous window respectively
map <silent> n <C-w><C-w>
map <silent> p <C-w><S-w>

map <silent> q :BD<CR>

"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

let g:session_autoload=1
let g:session_autosave=1
let g:session_default_to_last=1

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

let delimitMate_expand_cr=1

autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"let g:neocomplcache_enable_at_startup = 1
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
