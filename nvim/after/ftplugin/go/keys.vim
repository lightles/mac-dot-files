let g:which_key_local_leader_map.T = {
      \ 'name' : '+Tests' ,
      \ 't' : ['GoTest'   , 'run-tests'],
      \ 'f' : ['GoTestFunc'   , 'run-test-func'],
      \ }

nmap <localleader>b :GoBuild<CR>
let g:which_key_local_leader_map.b = 'build'
nmap <localleader>r :GoRun<CR>
let g:which_key_local_leader_map.r = 'run'


