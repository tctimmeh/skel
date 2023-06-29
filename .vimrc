" Vim 9.0

" Display
set shm=aToO		" (shortmess) show short messages
set sm			" (showmatch) show matching bracket when typing
set so=3		" (scrolloff) keep this many lines visible around cursor

" Clipboard
set cb=unnamedplus  " (clipboard) yank and paste from the real system clipboard

" Formatting
set nojs		" (joinspaces) join lines with only one space
set fo+=r		" (formatoptions) add comment leader when hitting enter
set lbr			" (linebreak) keep words together on line breaks
set sbr=$		" (showbreak) char to put before wrapped lines

" Indent
set si			" (smartindent)
set ts=4		" (tabstop) tabs are shown as 4 spaces
set sts=4		" (softtabstop) number of spaces to insert for a tab
set sw=4		" (shiftwidth) move text by 4 spaces when shifting
set sr			" (shiftround) round shifts to the shiftwidth
set et			" (expandtab) expand tabs to spaces

" Search
set ic			" (ignorecase) ignore case when searching
set scs			" (smartcase) match with case when pattern has upper case chars
set hls			" (hlsearch) highlight search matches until dismissed
set is			" (incsearch) show match while typing pattern

" Colors
colo torte
