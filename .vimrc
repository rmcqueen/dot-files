set tabstop=4 shiftwidth=4 expandtab "Sets tab to make 4 spaces instead
set number

syntax on
filetype plugin indent on

colorscheme fogbell_light

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
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'mbbill/undotree'
call plug#end()

" Google CodeFtm configs
augroup autoformat_settings
  autocmd FileType c,cpp,javascriptAutoFormatBuffer clang-format
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer autopep8
augroup END

