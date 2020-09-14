" Variables
let g:python3_host_prog=expand('~/.config/nvim/bin/pynvim3/bin/python')
let g:python_host_prog=expand('~/.config/nvim/bin/pynvim2/bin/python')
let g:default_preview_browser='Firefox'

call plug#begin('~/.config/nvim/bundle')

" Better file tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Better commenting
Plug 'scrooloose/nerdcommenter'

" fuzzy search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" show git hunks
Plug 'airblade/vim-gitgutter'

" surround things
Plug 'tpope/vim-surround'

" which key
Plug 'liuchengxu/vim-which-key'

" Snippits
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Theme related
Plug 'liuchengxu/space-vim-theme'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
" indent lines
Plug 'Yggdroot/indentLine'

" completion
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" TabNine
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" Python
Plug 'deoplete-plugins/deoplete-jedi'

" json 
Plug 'elzr/vim-json'

" ansible
Plug 'pearofducks/ansible-vim'

" Powershell
Plug 'PProvost/vim-ps1'

" pandoc & markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim' , { 'do': { -> mkdp#util#install()}}

" DockerFile
Plug 'ekalinin/Dockerfile.vim'

" Go
Plug 'fatih/vim-go'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

" plantuml
Plug 'aklt/plantuml-syntax'

call plug#end()
