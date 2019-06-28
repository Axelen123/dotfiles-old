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

call LD('defx.vim')
call LD('denite.vim')

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
