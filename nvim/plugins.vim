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
  call dein#add('neoclide/coc-eslint', {'build': 'npm install'})
  call dein#add('neoclide/coc-prettier', {'build': 'npm install'})
  call dein#add('neoclide/coc-rls', {'build': 'npm install'})
  call dein#add('neoclide/coc-python', {'build': 'npm install'})
  call dein#add('neoclide/coc-json', {'build': 'npm install'})
  call dein#add('neoclide/coc-html', {'build': 'npm install'})
  call dein#add('neoclide/coc-css', {'build': 'npm install'})
  call dein#add('neoclide/coc-emmet', {'build': 'npm install'})
  call dein#add('neoclide/coc-snippets', {'build': 'npm install'})
  call dein#add('neoclide/coc-vetur', {'build': 'npm install'})
  call dein#add('neoclide/coc-yaml', {'build': 'npm install'})
  call dein#add('neoclide/coc-tabnine', {'build': 'npm install'})
  call dein#add('iamcco/coc-angular', {'build': 'sh -c "npm install && npm run build"'})

  " coc + denite
  call dein#add('neoclide/coc-denite')
  
  " denite
  call dein#add('neoclide/denite-git')
  call dein#add('neoclide/denite-extra')
  call dein#add('neoclide/npm.nvim')

  " defx
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('kristijanhusak/defx-git')
  
  " languages
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('othree/yajs.vim')
  call dein#add('burner/vim-svelte')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('MaxMEllon/vim-jsx-pretty')
  call dein#add('fatih/vim-go')
  call dein#add('posva/vim-vue')
  " uncomment for deoplete 
  " call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})

  " scrooloose
  call dein#add('scrooloose/nerdcommenter')
  " call dein#add('scrooloose/syntastic')

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
  call dein#add('alvan/vim-closetag')
  call dein#add('mattn/emmet-vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('moll/vim-node')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
