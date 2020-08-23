syntax on
filetype plugin indent on

set tabstop=4 shiftwidth=4 expandtab "Sets tab to make 4 spaces instead
set number
set updatetime=50
set laststatus=2
set colorcolumn=100

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

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'mbbill/undotree'
Plug 'JamshedVesuna/vim-markdown-preview'
call plug#end()

" Google CodeFmt configs
augroup autoformat_settings
  autocmd FileType c,cpp,javascriptAutoFormatBuffer clang-format
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer autopep8
augroup END

" Coc remaps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Autotrim trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" vim-markdown-preview
let vim_markdown_preview_browser='Firefox'

