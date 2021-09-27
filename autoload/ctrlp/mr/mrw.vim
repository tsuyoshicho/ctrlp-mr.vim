"=============================================================================
" File: mr.vim/mrw ctrlp plugin
" Author: Tsuyoshi CHO
" Created: 2021-09-24
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_ctrlp_mr_mrw') && g:loaded_ctrlp_mr_mrw
  finish
endif
let g:loaded_ctrlp_mr_mrw = 1

let s:save_cpo = &cpo
set cpo&vim

let s:ctrlp_builtins = ctrlp#getvar('g:ctrlp_builtins')

let g:ctrlp_ext_vars = get(g:, 'ctrlp_ext_vars', []) + [
      \  {
      \    'init'  : 'ctrlp#mr#mrw#init()',
      \    'accept': 'ctrlp#acceptfile',
      \    'enter' : 'ctrlp#mr#mrw#enter()',
      \    'exit'  : 'ctrlp#mr#mrw#exit()',
      \    'lname' : 'mr.vim mrw',
      \    'sname' : 'mr_mrw',
      \    'type'  : 'path',
      \    'nolim' : 1,
      \    'sort'  : 0,
      \  }
      \]

let s:id = s:ctrlp_builtins + len(g:ctrlp_ext_vars)
unlet s:ctrlp_builtins

function! ctrlp#mr#mrw#id() abort
  return s:id
endfunction

function! ctrlp#mr#mrw#init() abort
  return s:mrw
endfunction

function! ctrlp#mr#mrw#enter() abort
  let s:mrw = mr#mrw#list()
  if get(g:, 'ctrlp_mr_mrw_curdir_base', v:false)
    let s:mrw = mr#filter(s:mrw, getcwd())
  endif
endfunction

function! ctrlp#mr#mrw#exit() abort
  unlet s:mrw
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

