set tabstop=4 shiftwidth=4 expandtab "Sets tab to make 4 spaces instead
set number

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


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'sjl/gundo.vim'
call plug#end()
