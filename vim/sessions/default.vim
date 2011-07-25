" ~/mydots/vim/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.4.9 on 24 July 2011 at 18:01:10.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if !exists('g:colors_name') || g:colors_name != 'ir_black' | colorscheme ir_black | endif
set background=dark
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeMapCloseChildren = "X"
let NERDTreeMouseMode = "1"
let Tlist_Sort_Type = "order"
let NERDTreeShowHidden =  1 
let SuperTabDefaultCompletionType = "context"
let Tlist_Enable_Fold_Column =  1 
let Tlist_Use_SingleClick =  0 
let SuperTabLongestHighlight =  0 
let NERDTreeMapCloseDir = "x"
let NERDTreeMapRefreshRoot = "R"
let Tlist_Show_One_File =  0 
let SuperTabMappingTabLiteral = "<c-tab>"
let NERDUsePlaceHolders = "1"
let NERDTreeMapRefresh = "r"
let Tlist_Compact_Format =  0 
let Tlist_Use_Horiz_Window =  0 
let NERDTreeBookmarksFile = "/Users/bbunge/.NERDTreeBookmarks"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize = "31"
let Tlist_Ctags_Cmd = "ctags"
let EasyMotion_do_mapping =  1 
let SuperTabCrMapping =  1 
let Tlist_Process_File_Always =  0 
let NERDTreeMapPreview = "go"
let NERDTreeNotificationThreshold = "100"
let NERDTreeMapActivateNode = "o"
let BufKillCommandWhenLastBufferKilled = "enew"
let BufKillFunctionSelectingValidBuffersToDisplay = "buflisted"
let NERDTreeWinPos = "left"
let NERDTreeMapMenu = "m"
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let Tlist_Display_Tag_Scope =  1 
let NERDTreeMapOpenInTabSilent = "T"
let NERDTreeMapHelp = "?"
let NERDTreeMapJumpParent = "p"
let NERDTreeMapToggleFilters = "f"
let SuperTabMappingForward = "<tab>"
let NERDTreeMapJumpLastChild = "J"
let SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let TagList_title = "__Tag_List__"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let NERDTreeShowBookmarks =  1 
let NERDMenuMode = "3"
let NERDDefaultNesting = "1"
let NERDTreeMapOpenInTab = "t"
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeChDirMode =  2 
let EasyMotion_do_shade =  1 
let Tlist_Highlight_Tag_On_BufEnter =  1 
let NERDTreeMinimalUI = "0"
let EasyMotion_grouping =  1 
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeShowFiles = "1"
let BufKillVerbose =  1 
let NERDTreeMapOpenSplit = "i"
let NERDTreeCaseSensitiveSort = "0"
let NERDTreeHijackNetrw = "1"
let Tlist_Max_Submenu_Items =  20 
let NERDSpaceDelims = "0"
let NERDTreeShowLineNumbers = "0"
let NERDTreeHighlightCursorline = "1"
let Tlist_GainFocus_On_ToggleOpen =  0 
let NERDLPlace = "[>"
let EasyMotion_mapping_B = "<Leader>B"
let EasyMotion_mapping_E = "<Leader>E"
let EasyMotion_mapping_F = "<Leader>F"
let Tlist_WinHeight =  10 
let EasyMotion_mapping_T = "<Leader>T"
let EasyMotion_mapping_W = "<Leader>W"
let EasyMotion_mapping_b = "<Leader>b"
let NERDCreateDefaultMappings = "1"
let Tlist_Inc_Winwidth =  1 
let EasyMotion_mapping_e = "<Leader>e"
let EasyMotion_mapping_f = "<Leader>f"
let Tlist_Auto_Update =  1 
let EasyMotion_mapping_j = "<Leader>j"
let EasyMotion_mapping_k = "<Leader>k"
let EasyMotion_mapping_t = "<Leader>t"
let EasyMotion_mapping_w = "<Leader>w"
let BufKillActionWhenBufferDisplayedInAnotherWindow = "confirm"
let NERDTreeMapPreviewVSplit = "gs"
let NERDChristmasTree = "1"
let NERDTreeMapUpdir = "u"
let BufKillOverrideCtrlCaret =  0 
let Tlist_Auto_Highlight_Tag =  1 
let NERDTreeMapChdir = "cd"
let NERDRPlace = "<]"
let Tlist_Exit_OnlyWindow =  0 
let NERDTreeMapToggleZoom = "A"
let Tlist_Display_Prototype =  0 
let NERDRemoveExtraSpaces = "0"
let Tlist_Max_Tag_Length =  10 
let NERDRemoveAltComs = "1"
let NERDTreeAutoCenter = "1"
let NERDTreeMapOpenVSplit = "s"
let SuperTabLongestEnhanced =  0 
let Tlist_WinWidth =  30 
let NERDTreeMapDeleteBookmark = "D"
let NERDBlockComIgnoreEmpty = "0"
let Tlist_Close_On_Select =  0 
let NERDTreeMapJumpNextSibling = "<C-j>"
let Tlist_File_Fold_Auto_Close =  0 
let Tlist_Auto_Open =  0 
let NERDTreeMapJumpRoot = "P"
let NERDCommentWholeLinesInVMode = "0"
let NERDTreeCopyCmd = "cp -r "
let SuperTabRetainCompletionDuration = "insert"
let NERDTreeMapQuit = "q"
let NERDTreeMapChangeRoot = "C"
let NERDCompactSexyComs = "0"
let EasyMotion_leader_key = "<Leader>"
let NERDTreeSortDirs = "1"
let NERDTreeMapToggleFiles = "F"
let EasyMotion_keys = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let NERDAllowAnyVisualDelims = "1"
let NERDTreeDirArrows = "0"
let EasyMotion_loaded =  1 
let NERDTreeMapOpenExpl = "e"
let NERDTreeMapJumpFirstChild = "K"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapToggleBookmarks = "B"
let SuperTabMappingBackward = "<s-tab>"
let EasyMotion_mapping_gE = "<Leader>gE"
let NERDTreeMapUpdirKeepOpen = "U"
let NERDTreeQuitOnOpen = "0"
let Tlist_Show_Menu =  0 
let EasyMotion_mapping_ge = "<Leader>ge"
let Tlist_Use_Right_Window =  0 
silent only
cd ~/mydots/vim/.vim/bundle/snipmate.vim/snippets
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +37 ~/main.c
badd +215 ~/.vimrc
badd +5 ~/main2.c
badd +1 _.snippets
badd +1 c.snippets
badd +12 cpp.snippets
badd +104 php.snippets
args ~/main.c
set lines=51 columns=201
edit ~/main.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <RightMouse> <Plug>delimitMateMRightMouse
imap <buffer> <LeftMouse> <Plug>delimitMateMLeftMouse
imap <buffer> <S-Up> <Plug>delimitMateS-Up
imap <buffer> <S-Down> <Plug>delimitMateS-Down
imap <buffer> <PageDown> <Plug>delimitMatePageDown
imap <buffer> <PageUp> <Plug>delimitMatePageUp
imap <buffer> <Down> <Plug>delimitMateDown
imap <buffer> <Up> <Plug>delimitMateUp
imap <buffer> <End> <Plug>delimitMateEnd
imap <buffer> <Home> <Plug>delimitMateHome
imap <buffer> <Right> <Plug>delimitMateRight
imap <buffer> <Left> <Plug>delimitMateLeft
imap <buffer> <Del> <Plug>delimitMateDel
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =len(b:_l_delimitMate_buffer) ? delimitMate#Finish(0) : delimitMate#JumpMany()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateEsc
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 37 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
