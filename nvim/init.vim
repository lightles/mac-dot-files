call plug#begin('~/.config/nvim/bundle')

" Variables
let g:python3_host_prog=expand('~/.config/nvim/bin/pynvim/bin/python3')
let g:default_preview_browser='Firefox'
let g:CocPluginList = ['coc-ultisnips', 'coc-python', 'coc-yaml']

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
" indent lines
Plug 'Yggdroot/indentLine'

" completion
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" VimL coc
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'

" json 
Plug 'elzr/vim-json'

" pandoc & markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim' , { 'do': { -> mkdp#util#install()}}

" DockerFile
Plug 'ekalinin/Dockerfile.vim'

" plantuml
Plug 'aklt/plantuml-syntax'

call plug#end()
