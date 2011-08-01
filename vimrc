if filereadable("$ADMIN_SCRIPTS/master.vimrc")
  source $ADMIN_SCRIPTS/master.vimrc
endif
if filereadable("/home/engshare/admin/scripts/vim/biggrep.vim")
  source /home/engshare/admin/scripts/vim/biggrep.vim
endif

set t_Co=256
"set term=xterm-256color

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
Bundle 'vim-scripts/project.tar.gz'
Bundle 'xolox/vim-session'
"Bundle 'cschlueter/vim-ir_black'
"Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
"Bundle 'Shougo/neocomplcache'
Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'fholgado/minibufexpl.vim'

"vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'taglist-plus'
"Bundle 'ZoomWin'
Bundle 'bufexplorer.zip'
Bundle 'YankRing.vim'

" requires sprecial ruby stuff
"Bundle 'LustyJuggler'
"Bundle 'LustyExplorer'

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

set number
set hidden

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

let mapleader="f"
nnoremap <C-@> a
vnoremap <C-@> <Esc>gV
onoremap <C-@> <Esc>
inoremap <C-@> <Esc>
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

syntax enable
set background=dark
"colorscheme jellybeans
"colorscheme tir_black 
"colorscheme dante
colorscheme solarized 

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
"set undodir=~/.vim/undofiles
"set undofile

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
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {<CR>}<Esc>O
"autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap " <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>

"function ClosePair(char)
  "if getline('.')[col('.') - 1] == a:char
    "return "\<Right>"
  "else
    "return a:char
  "endif
"endf

"function CloseBracket()
  "if match(getline(line('.') + 1), '\s*}') < 0
    "return "\<CR>}"
  "else
    "return "\<Esc>j0f}a"
  "endif
"endf

"function QuoteDelim(char)
  "let line = getline('.')
  "let col = col('.')
  "if line[col - 2] == "\\"
    ""Inserting a quoted quotation mark into the string
    "return a:char
  "elseif line[col - 1] == a:char
    ""Escaping out of the string
    "return "\<Right>"
  "else
    ""Starting a string
    "return a:char.a:char."\<Esc>i"
  "endif
"endf

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

let g:session_directory='~/vim-sessions'

inoremap <C-j> <Esc>A;<Esc>o

set tags=tags;/
nmap <silent> <F4>
      \ :!ctags -f ./tags
      \ --langmap="php:+.inc"
      \ -h ".php.inc" -R --totals=yes
      \ --tag-relative=yes --PHP-kinds=+cf-v .<CR>
set tags=./tags,tags

"command W w

set mouse=a

""""""""""""""""""""
" => Statusline
""""""""""""""""""""
"Always show the statusline
set laststatus=2
"Format the statusline
set statusline=%n\ %r%m\ %f%=%w%y%{fugitive#statusline()}[%l/%L:%c]%{strftime(\"%l:%M%P\ %D\")}

""""""""""""""""""""
" => Spell Checking
""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"Persistent undo
try
  set undodir=~/.vim_runtime/undodir
  set undofile
catch
endtry

"highlight clear
map <silent> <leader>hc :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <silent> <leader>y :YRShow<CR>

let php_sql_query=1

map <leader>ma :set mouse=a<CR>
map <leader>mo :set mouse=<CR>

set colorcolumn=81

map <leader>tn :tabnext<CR>
map <leader>tN :tabNext<CR>
map <leader>to :tabnew<CR>
map <leader>tq :tabclose<CR>
map <leader>tm :tabmove 

set tabpagemax=15
"hi TabLineSel term=bold cterm=bold ctermfg=16 ctermbg=229
"hi TabWinNumSel term=bold cterm=bold ctermfg=90 ctermbg=229
"hi TabNumSel term=bold cterm=bold ctermfg=16 ctermbg=229

"hi TabLine term=underline ctermfg=16 ctermbg=145
"hi TabWinNum term=bold cterm=bold ctermfg=90 ctermbg=145
"hi TabNum term=bold cterm=bold ctermfg=16 ctermbg=145

"Rename tabs to show tab# and # of viewports
if exists("+showtabline")
  function! MyTabLine()
    let s = ''
    let wn = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let s .= '%' . i . 'T'
      let s .= (i == t ? '%1*' : '%2*')
      let s .= ' '
      let wn = tabpagewinnr(i,'$')

      let s .= (i== t ? '%#TabNumSel#' : '%#TabNum#')
      let s .= i
      if tabpagewinnr(i,'$') > 1
        let s .= '.'
        let s .= (i== t ? '%#TabWinNumSel#' : '%#TabWinNum#')
        let s .= (tabpagewinnr(i,'$') > 1 ? wn : '')
      end

      let s .= ' %*'
      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')
      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        let file = fnamemodify(file, ':p:t')
      endif
      if file == ''
        let file = '[No Name]'
      endif
      let s .= file
      let s .= (i == t ? '%m' : '')
      let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%='
    return s
  endfunction
  set stal=2
  set tabline=%!MyTabLine()
endif
