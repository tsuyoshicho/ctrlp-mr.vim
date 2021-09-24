"=============================================================================
" File: mr.vim/mrr ctrlp plugin
" Author: Tsuyoshi CHO
" Created: 2021-09-24
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_ctrlp_mr_mrr') && g:loaded_ctrlp_mr_mrr
  finish
endif
let g:loaded_ctrlp_mr_mrr = 1

let s:save_cpo = &cpo
set cpo&vim

let s:ctrlp_builtins = ctrlp#getvar('g:ctrlp_builtins')

let g:ctrlp_ext_vars = get(g:, 'ctrlp_ext_vars', []) + [
      \  {
      \    'init'  : 'ctrlp#mr#mrr#init()',
      \    'accept': 'ctrlp#mr#mrr#accept',
      \    'enter' : 'ctrlp#mr#mrr#enter()',
      \    'exit'  : 'ctrlp#mr#mrr#exit()',
      \    'lname' : 'mr.vim mrr',
      \    'sname' : 'mr_mrr',
      \    'type'  : 'path',
      \    'nolim' : 1,
      \    'sort'  : 0,
      \  }
      \]

let s:id = s:ctrlp_builtins + len(g:ctrlp_ext_vars)
unlet s:ctrlp_builtins

function! ctrlp#mr#mrr#id() abort
  return s:id
endfunction

function! ctrlp#mr#mrr#init() abort
  return s:mrr
endfunction

function! ctrlp#mr#mrr#accept(mode, str) abort
  call ctrlp#exit()
  execute 'edit' a:str
endfunction

function! ctrlp#mr#mrr#enter() abort
  let s:mrr = mr#mrr#list()
endfunction

function! ctrlp#mr#mrr#exit() abort
  unlet s:mrr
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

