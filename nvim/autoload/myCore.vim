function! myCore#SshEdit()
  "let curline = getline('.')
  call inputsave()
  let ssh_user = input('Enter ssh user: ')
  call inputrestore()
  call inputsave()
  let ssh_host = input('Enter ssh host: ')
  call inputrestore()
  call inputsave()
  let ssh_file = input('Enter file name: ')
  call inputrestore()
  execute "edit scp://". ssh_user. "@". ssh_host. "/". ssh_file
  "call setline('.', curline . ' ' . name)
endfunction

function! myCore#UpdatePlugins()
    source ~/.config/nvim/init.vim
    :!curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    :PlugUpdate
endfunction

function! myCore#ToggleLineNumbers()
    :set number! | set norelativenumber!
endfunction

function! myCore#WriteAndDeleteTrailingWhitespace()
    :let _s=@/|:%s/\s\+$//e|:let @/=_s|:write
endfunction
