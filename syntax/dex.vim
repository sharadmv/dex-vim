" Vim syntax file
" Language: Dex
" Maintainer: Sharad Vikram
" Latest Revision: 18 March 2021

if exists("b:current_syntax")
  finish
endif

syn keyword dexKeywords 
      \ def
      \ for
      \ rof
      \ case
      \ of
      \ llam
      \ Read
      \ Write
      \ Accum
      \ data
      \ interface
      \ instance
      \ where
      \ import

syn match dexNumber "\<[0-9]\+\>\|\<[0-9_]\+\>\|\<0[xX][0-9a-fA-F_]\+\>\|\<0[oO][0-7_]\+\>\|\<0[bB][10_]\+\>"
syn match dexFloat "\<[0-9]\+\.[0-9_]\+\([eE][-+]\=[0-9_]\+\)\=\>"

syn match dexOperators "[-!#$%&\*\+/<=>\?@\\^|~:.]\+\|\<_\>"

syn match dexType "\<[A-Z][a-zA-Z0-9_']*\>"
syn match dexExpectedOutput "^>.*"

syn region dexProseBlock start="^'" end="\n\n"

syn match dexLineComment "--.*$"
  \ contains=
  \ @Spell


highlight default link dexKeywords Keyword
highlight default link dexNumber Number
highlight default link dexFloat Float
highlight default link dexOperators Operator
highlight default link dexLineComment Comment
highlight default link dexProseBlock Comment
highlight default link dexExpectedOutput Comment
highlight default link dexType Type
highlight default link dexIdentifier Identifier
