syntax on
set number
set termguicolors
"colo cyberpunk "In process...

"===========================Vim-Plug==============================="

call plug#begin('~/.config/nvim/plugged')
  Plug 'townk/vim-autoclose'
  Plug 'etdev/vim-hexcolor'
  Plug 'thaerkh/vim-indentguides'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'keith/swift.vim'
  Plug 'fatih/vim-go'
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"===========================Air-Line=============================="

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

 " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
  
  "  airline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

let g:deoplete#enable_at_startup = 1


"==========================Nerd-Tree=============================="

nmap <C-d> :NERDTreeToggle<CR>

"==========================Tab-Size==============================="

set expandtab
set tabstop=2
set shiftwidth=2

"========================Indent-Guides============================"

let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

"===========================Air-Line=============================="

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Ctrl-Space
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
      inoremap <silent><expr> <c-@> coc#refresh()
    endif

"===========================Vim-Go=============================="

let g:go_fmt_command = "goimports"
