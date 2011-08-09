source $HOME/vim-brie/bundles.vim

if filereadable("$ADMIN_SCRIPTS/master.vimrc")
  source $ADMIN_SCRIPTS/master.vimrc
endif
if filereadable("/home/engshare/admin/scripts/vim/biggrep.vim")
  source /home/engshare/admin/scripts/vim/biggrep.vim
endif

set t_Co=256

set number
set hidden
set ruler

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
filetype plugin indent on
" make uses real tabs
au FileType make set noexpandtab

let mapleader=" "
nnoremap <C-@> a
vnoremap <C-@> <Esc>gV
onoremap <C-@> <Esc>
inoremap <C-@> <Esc>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

syntax enable
set background=dark
"colorscheme jellybeans
"colorscheme tir_black 
colorscheme solarized 

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>N :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
"let NERDTreeChDirMode=2

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" Enable syntastic syntax checking
"let g:syntastic_enable_signs=1
"let g:syntastic_quiet_warnings=1

set showcmd
set showmode

"set list

set wrap        "dont wrap lines
set colorcolumn=+1 "mark the ideal max text width

nmap <silent> <Leader>t :TlistToggle<CR>

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"" Maps Alt-[h,j,k,l] to resizing a window split
"map <silent> h <C-w><
"map <silent> j <C-W>-
"map <silent> k <C-W>+
"map <silent> l <C-w>>
""Maps Alt-[s.v] to horizontal and vertical split respectively
"map <silent> s :split<CR>
"map <silent> v :vsplit<CR>
""Maps Alt-[n,p] for moving next and previous window respectively
"map <silent> n <C-w><C-w>
"map <silent> p <C-w><S-w>
"map <silent> q :BD<CR>

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

let g:session_directory='~/vim-sessions'

inoremap <C-j> <Esc>A;<Esc>o

set tags=tags;/
nmap <silent> <F4>
      \ :!ctags -f ./tags
      \ --langmap="php:+.inc"
      \ -h ".php.inc" -R --totals=yes
      \ --tag-relative=yes --PHP-kinds=+cf-v .<CR>
set tags=./tags,tags

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

nnoremap <silent> <leader>y :YRShow<CR>

let php_sql_query=1

map <leader>ma :set mouse=a<CR>
map <leader>mo :set mouse=<CR>

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

set showtabline=1

nnoremap <leader>u :GundoToggle<CR>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

"set formatprg=par\ -w78

" Make Y behave consistently with D and C
noremap Y y$

" Re-select visual area after indenting
vnoremap > >gv
vnoremap < <gv

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"-- FuzzyFinder -----------------------------------------------------------
nnoremap <silent> <leader>fb :FufBuffer<CR>
nnoremap <silent> <leader>fd :FufDir<CR>
nnoremap <silent> <leader>ff :FufFile<CR>
nnoremap <silent> <leader>fh :FufHelp<CR>
nnoremap <silent> <leader>ft :FufTag<CR>
let g:fuf_keyOpen = '<Tab>'

"-- Fugitive (Git) --------------------------------------------------------
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>)

nmap <Leader>tbh :Tabularize /[a-z]\+=/l1l0<CR>
vmap <Leader>tbh :Tabularize /[a-z]\+=/l1l0<CR>

map <leader>w :w<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

nnoremap <silent> <leader>jsb :call g:Jsbeautify()<cr>
