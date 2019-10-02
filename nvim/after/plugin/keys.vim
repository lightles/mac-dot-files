let g:mapleader = "\<Space>"
let g:maplocalleader = ','
" non leader keybinds

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <C-_> :let@/=""<CR>

" localleader and leader keybinds via which_key

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_leader_map")
call which_key#register(',', "g:which_key_local_leader_map") 
let g:which_key_leader_map =  {}
let g:which_key_local_leader_map =  {}

"LOCAL LEADER
"let g:which_key_local_leader_map. = {}

"LEADER
let g:which_key_leader_map.b = {
      \ 'name' : '+Buffer' ,
      \ 'b' : ['Buffers'   , 'buffers']             ,
      \ 'd' : ['bd'        , 'delete-buffer']       ,
      \ 'n' : ['bn'        , 'next-buffer']         ,
      \ 'p' : ['bp'        , 'previous-buffer']     ,
      \ 'a' : ['ball'      , 'open-all-buffers']    ,
      \ 'o' : ['only'      , 'close-all-but-this']  ,
      \ 'w' : [':call myCore#WriteAndDeleteTrailingWhitespace()' , 'delete-trailing-write'] ,
      \ }

let g:which_key_leader_map.w = {
      \ 'name' : '+Window' ,
      \ 's' : ['split'     , 'hSplit']        ,
      \ 'v' : ['vsplit'    , 'vSplit']        ,
      \ 'd' : ['q'         , 'close-window']  ,
      \ 'h' : ['<C-w>h'    , 'window-left']   ,
      \ 'j' : ['<C-w>j'    , 'window-down']   ,
      \ 'k' : ['<C-w>k'    , 'window-up']     ,
      \ 'l' : ['<C-w>l'    , 'window-right']  ,
      \ 'w' : ['<C-w>w'    , 'window-other']  ,
      \ }

let g:which_key_leader_map.t = {
      \ 'name' : '+Tabs'     ,
      \ 'p' : ['tabprevious' , 'prev-tab']    ,
      \ 'n' : ['tabnext'     , 'next-tab']    ,
      \ 'd' : ['tabclose'    , 'close-tab']   ,
      \ 'c' : ['tabnew'      , 'create-tab']  ,
      \ }

let g:which_key_leader_map.T = {
      \ 'name' : '+Toggle'   ,
      \ 'w' : [':set wrap!'            , 'line-wrap']   ,
      \ 'i' : [':set paste!'           , 'paste-mode']  ,
      \ 'I' : ['IndentLinesToggle'     , 'indent-lines']  ,
      \ 'l' : [':call myCore#ToggleLineNumbers()' , 'line-numbers'] ,
      \ }

let g:which_key_leader_map.g = {
      \ 'name' : '+Git'   ,
      \ 'n' : ['<Plug>GitGutterNextHunk' , 'next-hunk'] ,
      \ 'p' : ['<Plug>GitGutterPrevHunk' , 'prev-hunk'] ,
      \ }
let g:which_key_leader_map.g.T = {
      \ 'name' : '+GitGutter'   ,
      \ 'g' : ['GitGutterToggle' , 'git-gutter'] ,
      \ 'l' : ['GitGutterLineHighlightsToggle'   , 'git-hlines']  ,
      \ 'n' : ['GitGutterLineNrHighlightsToggle' , 'git-hline-num']  ,
      \ }

let g:which_key_leader_map.f = {
      \ 'name' : '+File',
      \ 't' : ['NERDTreeToggle' , 'file-tree']       ,
      \ 'f' : ['Files'          , 'find-files']      ,
      \ 'g' : ['GFiles'         , 'find-git-files']  ,
      \ 's' : [':Files ~/'      , 'find-files-all']  ,
      \ 'F' : [':call myCore#SshEdit()'     , 'find-remote-file'] ,
      \ }

let g:which_key_leader_map.s = {
      \ 'name' : '+Search',
      \ 's' : ['Lines'    , 'lines']    ,
      \ 't' : ['Tags'     , 'tags']     ,
      \ 'w' : ['Windows'  , 'windows']  ,
      \ 'i' : ['Snippets' , 'snippets'] ,
      \ }

let g:which_key_leader_map.q = {
      \ 'name' : '+System' ,
      \ 'c' : ['checkhealth' , 'neovim-health'] ,
      \ 'u' : [':call myCore#UpdatePlugins()' , 'update-plugins']  ,
      \ }

let g:which_key_leader_map.h = {
      \ 'name' : '+Help' ,
      \ 'c' : ['commands' , 'command-list'] ,
      \ 'h' : [':Help' , 'help-search'] ,
      \ }
let g:which_key_leader_map.h.k = {
      \ 'name' : '+Key-maps' ,
      \ 'a' : ['map' , 'map'] ,
      \ 'i' : ['imap' , 'insert-keys'] ,
      \ 'v' : ['vmap' , 'visual-keys'] ,
      \ 'n' : ['nmap' , 'normal-keys'] ,
      \ }

let g:which_key_leader_map.C = {
      \ 'name' : '+NERDCommenter' ,
      \ 'c' : ['<Plug>NERDCommenterToggle' , 'comment'] ,
      \ 'y' : ['<Plug>NERDCommenterYank' , 'comment-yank'] ,
      \ 't' : [':call  myCore#AddATODOAboveLine()' , 'place-TODO'] ,
      \ }

let g:which_key_leader_map.c = 'comment'
nmap <leader>c <Plug>NERDCommenterToggle
vmap <leader>c <Plug>NERDCommenterToggle
vmap <leader>Cc <Plug>NERDCommenterToggle
vmap <leader>Cy <Plug>NERDCommenterYank

nmap <silent> <leader>S bveS
let g:which_key_leader_map.S = 'surround-word'
