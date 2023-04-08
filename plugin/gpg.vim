if exists('g:loaded_gpg') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

command! GPG lua require'gpg'.gpg()
" " Section: Autocmd {{{1
"
" " Section: Highlights {{{1
" highlight default link GPGWarning WarngingMSG
" highlight default link GPGError ErrorMSG
" highlight default link GPGHighlightUnknownRecipient ErrorMSG
"
"
" " Section: Commands {{{1
"
" command! GPGViewRecipients lua require'gpg'.view_recipients()
" command! GPGEditRecipients lua require'gpg'.edit_recipients()
" command! GPGViewOptions    lua require'gpg'.view_options()
" command! GPGEditOptions    lua require'gpg'.edit_options()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_gpg = 1
