" Vim syntax file
" Language:        easy todo
" Maintainer:    xbeta (http://blog.sina.com.cn/m/xbeta)
" Changelog:    v1.0(061218)
" Install:
"    1) Copy this file into your $VIM/syntax directory.
"    2) Add this line to filetype.vim:
"       au BufNewFile,BufRead *.etd setf easytodo
" Usage:
"    1)
"	���������۵��㼶�����飺�ڼ��ܶ�����������1��tab��todo��Ŀ����2��tab��
"    2)
"	todo��Ŀǰ�����ֱ�ʾ״̬��������ɫ�����飺0��ʾ��ɣ�1��ʾtodo��2��ʾ����todo��
"    3)
"	��Ctrl-A��Ctrl-X����״̬���ּӼ�1���簴����Ч���ܿ�����������mswin���ӳ�䡣

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded

set fdc=4
set lsp=5
syn match zweek ".*week.*"
syn match ztd0 "^\t\t0 \S.*"
syn match ztd1 "^\t\t1 \S.*"
syn match ztd2 "^\t\t2 \S.*"
syn match done "OK"
syn keyword Comment	OK
syn keyword Repeat      OKing
syn keyword Float       Later
syn keyword Underlined  underline
syn keyword NonText	nontext
syn keyword Constant	constant NotOK

hi ztd0 guifg=darkgray
hi ztd1 guifg=yellow
hi ztd2 guifg=red gui=bold
hi zweek  guibg=darkgray

abb <buffer> week week______________________________________________________
"��һ��Ϊ����week���Զ��ں������N���»����������Ƚ���Ŀ
set fdm=expr
set foldexpr=Myindent(v:lnum)
func! Myindent(lnum)
  let s:a=strlen(matchstr(getline(v:lnum), '^\t\+'))
  if s:a == 0
    return '>1'
  elseif s:a == 1
    return '>2'
  else
    return '='
  endif
endf
