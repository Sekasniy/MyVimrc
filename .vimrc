"-----Bundle-----"

set nocompatible
filetype off  

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

filetype plugin indent on

"----------------Vim_lib and plugins-------------------"

filetype off 
set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle') " Адрес до вашего ~/.vim/bundle

Plugin 'vim_lib'
Plugin 'vim_plugmanager'
Plugin 'vim_prj'
Plugin 'vim-fugitive'
Plugin 'vim_git', {
      \  'map': {
      \    'status':      '<Leader>gs', 
      \    'log':         '<Leader>gl', 
      \    'branchList':  '<Leader>gb', 
      \    'tagList':     '<Leader>gt', 
      \    'addCurrent':  '<Leader>ga', 
      \    'addAll':      '<Leader>gA', 
      \    'commit':      '<Leader>gc', 
      \    'commitAll':   '<Leader>gC', 
      \    'pushCurrent': '<Leader>go', 
      \    'pullCurrent': '<Leader>gi', 
      \    'remoteList':  '<Leader>gr',
      \  }
      \}
Plugin 'vim_winmanager'


filetype indent plugin on

"----------------Working alt key----------------------"

let c='a'
while c <= 'z'
	  exec "set <A-".c.">=\e".c
	    exec "imap \e".c." <A-".c.">"
	      let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50


map q :q<CR>
map s :w<CR>
map <Leader>rv :so $MYVIMRC<CR>
