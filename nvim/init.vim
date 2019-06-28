if &compatible
  set nocompatible
endif

let s:path = resolve(expand('<sfile>:p:h'))

function LD(file)
    execute 'source ' . s:path . '/' . a:file
endfunction

call LD('plugins.vim')
call LD('env.vim')
call LD('keymaps.vim')
