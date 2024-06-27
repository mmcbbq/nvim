nnoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'StanAngeloff/php.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'folke/tokyonight.nvim'
Plug 'preservim/nerdtree'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'savq/melange-nvim'
Plug 'scottmckendry/cyberdream.nvim'
call plug#end()
set termguicolors
colorscheme cyberdream 

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" gd to go to definition
nmap <silent> gd <Plug>(coc-definition)
" gr to go to reference
nmap <silent> gr <Plug>(coc-references)


"" ctr+n will open and close NERDTree
nnoremap <C-N> :NERDTreeToggle<CR>
"" <leader> + o will open NERDTree in the file your editing
nnoremap <leader>o :NERDTreeFind<CR>

set relativenumber
set nu rnu
hi LineNr term=bold cterm=bold ctermfg=blue guifg=blue
hi LineNrAbove guifg=red ctermfg=red
hi LineNrBelow guifg=green ctermfg=green
