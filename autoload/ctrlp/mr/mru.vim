"=============================================================================
" File: mr.vim/mru ctrlp plugin
" Author: Tsuyoshi CHO
" Created: 2021-09-24
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_ctrlp_mr_mru') && g:loaded_ctrlp_mr_mru
  finish
endif
let g:loaded_ctrlp_mr_mru = 1

let s:save_cpo = &cpo
set cpo&vim

let s:ctrlp_builtins = ctrlp#getvar('g:ctrlp_builtins')

let g:ctrlp_ext_vars = get(g:, 'ctrlp_ext_vars', []) + [
      \  {
      \    'init'  : 'ctrlp#mr#mru#init()',
      \    'accept': 'ctrlp#mr#mru#accept',
      \    'enter' : 'ctrlp#mr#mru#enter()',
      \    'exit'  : 'ctrlp#mr#mru#exit()',
      \    'lname' : 'mr.vim mru',
      \    'sname' : 'mr_mru',
      \    'type'  : 'path',
      \    'nolim' : 1,
      \    'sort'  : 0,
      \  }
      \]

let s:id = s:ctrlp_builtins + len(g:ctrlp_ext_vars)
unlet s:ctrlp_builtins

function! ctrlp#mr#mru#id() abort
  return s:id
endfunction

function! ctrlp#mr#mru#init() abort
  return s:mru
endfunction

function! ctrlp#mr#mru#accept(mode, str) abort
  call ctrlp#exit()
  execute 'edit' a:str
endfunction

function! ctrlp#spelunker#enter() abort
  let s:mru = mr#mru#list()
endfunction

function! ctrlp#spelunker#exit()
  unlet s:mru
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
