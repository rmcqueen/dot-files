set tabstop=4 shiftwidth=4 expandtab "Sets tab to make 4 spaces instead
set number

execute pathogen#infect()
syntax on
filetype plugin indent on

nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif
    
map <C-n> :NERDTreeToggle<CR>
if !has('gui_running')
  set t_Co=256
endif
set laststatus=2

