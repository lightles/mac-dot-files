let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:UltiSnipsExpandTrigger="<c-s>"
call deoplete#custom#source('tabnine', 'rank', 1)
call deoplete#custom#source('ultisnips', 'rank', 2)
