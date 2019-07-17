function! Term() abort
  20sp
  Deol
endfunction

" Open terminal
nnoremap <C-t> :call Term()<CR>
inoremap <C-t> <Esc> :call Term()<CR>

" Put terminal in normal mode
tnoremap <C-r> <Esc> <C-\><C-n>

" Quit
nnoremap <silent><C-x> :q<CR>
inoremap <silent><C-x> <Esc> :q<CR>
tnoremap <silent><C-x> :q<CR>

" Open Defx
nnoremap <silent><C-f> :Defx<CR>
inoremap <silent><C-f> <Esc> :Defx<CR>
tnoremap <silent><C-f> <Esc> <C-\><C-n> :Defx<CR>

" Save file
inoremap <silent><C-s> <Esc> :w<CR>i
nnoremap <silent><C-s> :w<CR>

" Move in insert and command mode
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>
cnoremap <A-h> <Left>
cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-l> <Right>

" Switch pane in split mode
tnoremap <C-a> <C-w>w
nnoremap <C-a> <C-w>w
inoremap <C-a> <Esc> <C-w>w
tnoremap <C-q> <C-w>k
nnoremap <C-q> <C-w>k
inoremap <C-q> <Esc> <C-w>k

" coc format
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
