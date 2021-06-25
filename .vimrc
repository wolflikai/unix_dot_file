set nu
set hlsearch
exec "nohlsearch"
set incsearch
" set smartcase
set showmode
set number
set relativenumber
set scrolloff=5
set history=10000
set cursorline
"set ts=4
set expandtab
set nocompatible 
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent

" Linebreak on 500 characters
set lbr
set tw=200

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Coc Plug

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Coc Plug End


map s<right> :set splitright<CR>:vsplit<CR>
map s<left> :set nosplitright<CR>:vsplit<CR>
map s<up> :set splitbelow<CR>:split<CR>
map s<down> :set splitbelow<cR>:split<CR>


map <Space><right> <C-w>l
map <Space><up> <C-w>k
map <Space><left> <C-w>h
map <Space><down> <C-w>j

map <C-up> :res+5<CR>
map <C-down> :res-5<CR>
map <C-right> :vertical resize+5<CR>
map <C-left> :vertical resize-5<CR>

" open terminal in vim8.2
map <F6> :botright term ++close ++kill=term ++rows=10<CR>

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'itchyny/vim-cursorword'
Plug 'Yggdroot/indentLine'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" 补全提示
set signcolumn=yes 

" 注释的时候添加一个空格 \cc \cu
let g:NERDSpaceDelims = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='cool'

colorscheme molokai
" colorscheme jellybeans
" let g:airline_theme = 'codedark'

let g:indentLine_setColors = 0
let g:indentLine_char = '¦'

" autocmd vimenter * NERDTree
" vim关闭时 tree关闭
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenVSplit='vs'
nmap <F8> :TagbarToggle<CR>


au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
