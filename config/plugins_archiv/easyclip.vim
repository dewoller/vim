

let g:EasyClipAutoFormat = 1
let g:EasyClipUseSubstituteDefaults = 1
let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipShareYanks = 0
let g:EasyClipShareYanksDirectory = $HOME
let g:EasyClipShareYanksFile = '.easyclip'

let g:EasyClipUseSubstituteDefaults = 0
nmap <silent> gs <plug>SubstituteOverMotionMap
nmap gss <plug>SubstituteLine
xmap gs <plug>XEasyClipPaste

let g:EasyClipUseCutDefaults = 0
nmap <silent> gd <Plug>MoveMotionPlug
xmap gd <Plug>MoveMotionXPlug
nmap gdd <Plug>MoveMotionLinePlug

let g:EasyClipUsePasteToggleDefaults = 0
nmap <c-f> <plug>EasyClipSwapPasteForward
nmap <c-d> <plug>EasyClipSwapPasteBackwards

imap <C-v> <plug>EasyClipInsertModePaste
cmap <c-v> <plug>EasyClipCommandModePaste
set clipboard=unnamed,unnamedplus
