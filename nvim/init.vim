if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  " Shougo
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  " uncomment for deoplete call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deol.nvim')
  call dein#add('Shougo/defx.nvim')

  " uncomment once implemented
  " call dein#add('Shougo/deoppet.nvim')
  " remove when deoppet.nvim is implemented
  " or uncomment if you want to use snippets with deoplete
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')

  " uncomment for deoplete
  " call dein#add('deoplete-plugins/deoplete-go', {'build': 'make'})
  " call dein#add('deoplete-plugins/deoplete-jedi')
  " call dein#add('deoplete-plugins/deoplete-clang')
  " call dein#add('deoplete-plugins/deoplete-docker')
  " call dein#add('deoplete-plugins/deoplete-zsh')
  " call dein#add('autozimu/LanguageClient-neovim', {
  "  \'rev': 'next',
  "  \'build': 'bash install.sh',
  " \})

  " coc
  call dein#add('neoclide/coc.nvim', {'build': 'npm install'})
  call dein#add('neoclide/coc-tsserver', {'build': 'npm install'})
  call dein#add('neoclide/coc-rls', {'build': 'npm install'})
  call dein#add('neoclide/coc-python', {'build': 'npm install'})
  call dein#add('neoclide/coc-json', {'build': 'npm install'})
  call dein#add('neoclide/coc-snippets', {'build': 'npm install'})

  " defx
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('kristijanhusak/defx-git')

  " denite
  call dein#add('neoclide/denite-git')
  call dein#add('neoclide/denite-extra')
  call dein#add('neoclide/npm.nvim')

  " languages
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('othree/yajs.vim')
  call dein#add('burner/vim-svelte')
  call dein#add('fatih/vim-go')
  " uncomment for deoplete 
  " call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})

  " scrooloose
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/syntastic')

  " tpope
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-surround', {'on_map': {'n' : ['cs', 'ds', 'ys']}})

  " fugitive
  call dein#add('tpope/vim-rhubarb')
  call dein#add('junegunn/gv.vim')
  call dein#add('sodapopcan/vim-twiggy')

  " airline
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " other
  call dein#add('rakr/vim-one')
  call dein#add('w0rp/ale')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('mattn/emmet-vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('moll/vim-node')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
colorscheme one
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set splitright
set splitbelow
set termguicolors
set background=dark
set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype svelte setlocal ts=2 sts=2 sw=2
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

call defx#custom#option('_', {
	\'columns': 'git:mark:indent:icons:filename:type',
\})

" ============================
" Uncomment if you want deoplete
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_serverCommands = {
"   \'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"   \'svelte': ['bash', '-c', '. ~/.nvm/nvm.sh && nvm exec svelteserver']
" \}
" let g:LanguageClient_rootMarkers = {
"   \'svelte': ['package.json'],
"   \'rust': ['Cargo.toml'],
" \}

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \ 'rust': ['LanguageClient', 'ale'],
" \ 'svelte': ['LanguageClient', 'ale']
" \})
" call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
" call deoplete#custom#source('LanguageClient', 'rank', 500)
" call deoplete#custom#source('LanguageClient',
"   \'min_pattern_length',
" \1)
" call deoplete#custom#source('LanguageClient', 'sorters', [])
" ============================

let g:defx_git#indicators = {
  \'Modified'  : '✹',
  \'Staged'    : '✚',
  \'Untracked' : '✭',
  \'Renamed'   : '➜',
  \'Unmerged'  : '═',
  \'Ignored'   : '☒',
  \'Deleted'   : '✖',
  \'Unknown'   : '?'
\}
let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2
let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = '*'
let g:defx_icons_parent_icon = ''
let g:defx_icons_default_icon = ''
let g:defx_icons_directory_symlink_icon = ''
" Options below are applicable only when using "tree" feature
let g:defx_icons_root_opened_tree_icon = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''
let g:ruby_host_prog = 'rvm all do neovim-ruby-host'
let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_javascript_eslint_use_global = 0
let g:ale_typescript_eslint_use_global = 0
let b:ale_linter_aliases = {'svelte': ['javascript']}
let b:ale_linters = {
  \'javascript': ['tsserver', 'eslint'],
  \'typescript': ['tsserver', 'eslint'],
  \'svelte': ['eslint'],
  \'go': ['gobuild', 'golint', 'gofmt'],
  \'python': ['pylint']
\}
let b:ale_fixers = {
  \'javascript': ['prettier', 'eslint'],
  \'typescript': ['prettier', 'eslint'],
  \'svelte': ['prettier', 'eslint'],
  \'go': ['gofmt', 'gomod']
\}
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_denite = 1

augroup defxConfig
  autocmd!
  autocmd FileType defx call s:defx_my_settings()
augroup END

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

" Switch pane in split mode
tnoremap <C-a> <C-w>w
nnoremap <C-a> <C-w>w
inoremap <C-a> <Esc> <C-w>w
tnoremap <C-q> <C-w>k
nnoremap <C-q> <C-w>k
inoremap <C-q> <Esc> <C-w>k

function! Open(context) abort
  if defx#is_directory()
    call defx#call_action('open_or_close_tree')
  else
    call defx#call_action('open', 'vsplit')
    vertical resize +50
  endif
endfunction

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> <Delete>
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

function! s:defx_my_settings() abort

  " Open
  nnoremap <silent><buffer><expr> <CR> defx#do_action('call', 'Open')
  " Preview current file
  " nnoremap <silent><buffer><expr> s defx#do_action('open', 'pedit')

  " File manipulation
  nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> <Del> defx#do_action('remove')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  nnoremap <silent><buffer><expr> yy defx#do_action('copy')
  nnoremap <silent><buffer><expr> dd defx#do_action('move')
  nnoremap <silent><buffer><expr> pp defx#do_action('paste')

  "Navigation
  nnoremap <silent><buffer><expr> - defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> ~ defx#do_action('cd', [getcwd()])

  " Miscellaneous actions
  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
  nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yp defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
  nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw') . ':nohlsearch<cr>:syntax sync fromstart<cr><c-l>'

  nnoremap <silent><buffer><expr><nowait> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')

  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:filename:type:size:time')
  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')

  " nnoremap <silent><buffer><expr>e defx#do_action('call', 'DefxExternalExplorer')
  nnoremap <silent><buffer><expr> e defx#do_action('call', 'OpenRanger')
endfunction

" nnoremap <silent> <leader>o :call OpenRanger()<cr>
nnoremap <silent>- :Defx `expand('%:p:h')` -show-ignored-files -search=`expand('%:p')`<CR>
nnoremap <Leader>- :Defx -split=vertical -winwidth=50 -direction=topleft<CR>

