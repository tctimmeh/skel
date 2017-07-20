autocmd!

set nocompatible    " not compatible with classic vi

set sc              " show commands as they're typed
set hi=246          " command history
set nuw=1           " use minimal space for line numbers
set wrap            " wrap long lines...
set lbr             " ... and keep words together
set ruler           " show ruler at bottom
set bs=2            " Smart backspace in insert mode
set fo+=r           " Auto-format comments while typing
set com-=:%         " '%' doesn't start comments
set hls             " Highlight search pattern matches
set nojs            " Join lines with only one space
set kp=             " No external help system
set mps+=<:>        " Make % work with <>
set mls=1           " Check one line for modelines
set nf-=octal       " Ctrl-A doesn't increment octal numbers
set sb              " Open new windows below the current one
set shm=a           " Use the shortest messages
set scs             " Smart case in search patterns when 'ignorecase' is on
set sm              " Show matching brackets when typing
set su+=.class      " Skip Java class files for filename completion...
set su-=.h          " ...but not C header files
set tw=0            " No automatic line wrap
set ul=200          " undo level
set ic              " ignore case during search
set si              " smart indent
set ts=4            " number of spaces per tab character 
set sts=4           " convert tabs to this many spaces
set sw=4            " auto-indent width
set et              " expand tabs to spaces
set is              " incremental search
set sbr=$           " char to display for wrapped lines
set so=3            " keep this many lines visible around cursor
set ph=10           " size of insert completion popup menu
set fen             " enable folding
set fdm=indent      " fold based on ident level
set fdl=99          " fold nothing by default
filetype plugin on  " allow plugins based on filetype

if has("clipboard")
  nnoremap d "+d
  vnoremap d "+d
  nnoremap y "+y
  vnoremap y "+y
  nnoremap Y "+Y
  vnoremap Y "+Y
  nnoremap p "+p
  vnoremap p "+p
  nnoremap P "+P
  vnoremap P "+P
endif

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

inoremap <c-b> <Esc>O<Tab>

nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :ConqueTerm bash<CR>
nnoremap <F5> :wa<CR>:make test<CR>
nnoremap <F7> :wa<CR>:make<CR>
"nnoremap <F8> :TlistToggle<CR>
nnoremap <F8> :TlistOpen<CR>
nnoremap <S-F8> :TlistToggle<CR>
nnoremap <F10> :ls<CR>:e #

let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Compact_Format = 1
let g:SuperTabDefaultCompletionType = "context"
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1
let NERDTreeWinSize = 31
let g:ragtag_global_maps = 1

" syntax highlighting
syntax on
colo elflord
hi clear
hi Normal None guibg=Black guifg=Gray ctermbg=Black ctermfg=Gray
hi LineNr None guibg=bg guifg=DarkGray ctermbg=bg ctermfg=DarkGray
hi Search None gui=bold,underline cterm=bold,underline
hi! link IncSearch Search
hi StatusLine None guibg=blue guifg=white ctermbg=blue ctermfg=white
hi Visual None guibg=bg gui=reverse ctermbg=bg cterm=reverse
hi MatchParen None gui=bold cterm=underline
hi Comment None guifg=#666666 ctermfg=DarkGray
hi Statement None guifg=#4466ff ctermfg=Blue
hi Type None guifg=#00bbbb ctermfg=DarkCyan
hi Constant None guifg=#bb0000 ctermfg=DarkRed
hi Number None guifg=#aa8800 ctermfg=DarkYellow
hi Identifier None guifg=#bb4477 ctermfg=DarkMagenta
hi Error None ctermbg=Red ctermfg=White gui=undercurl guisp=Red
hi PreProc None ctermfg=DarkGreen guifg=#00bb00
hi Todo None guifg=White ctermfg=White
hi Title None gui=underline cterm=underline guifg=#00bb00 ctermfg=DarkGreen
hi NonText None guifg=Red ctermfg=Red
hi TabLineFill None ctermbg=bg cterm=underline ctermfg=White
hi TabLineSel None cterm=underline ctermfg=Green

au BufRead wiki.*.txt run confluence.vim

autocmd FileType python setlocal sw=4 sts=4 ts=4
