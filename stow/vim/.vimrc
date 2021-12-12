" default show line number and relative line number
set number relativenumber
" set numberwidth=3
" desable relative line number when no focus
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" highlight LineNr ctermfg=white 
" hi LineNr   cterm=bold ctermbg=gray ctermfg=black gui=bold guibg=gray guifg=white

" remember the line we were when we close the file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" turn on syntax coloration
syntax on
colorscheme morning
