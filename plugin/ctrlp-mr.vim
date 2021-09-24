let s:save_cpo = &cpo
set cpo&vim

" command
command! CtrlPMRMru :call ctrlp#init(ctrlp#mr#mru#id())
command! CtrlPMRMrw :call ctrlp#init(ctrlp#mr#mrw#id())
command! CtrlPMRMrr :call ctrlp#init(ctrlp#mr#mrr#id())

let &cpo = s:save_cpo
unlet s:save_cpo
