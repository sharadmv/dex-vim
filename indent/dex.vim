setlocal indentexpr=DexIndent()

function! DexIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)
  let prevline = getline(v:lnum - 1)

  if prevline =~ '.*[=.]$'
    return indent(v:lnum - 1) + &shiftwidth
  endif
  return indent(v:lnum - 1)

  if prevline =~ '^\s*$' && line !~ '^\s*\S'
    return 0
  endif

endfunction
