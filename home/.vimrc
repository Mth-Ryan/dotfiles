"Initial Setup
syntax on
set nu!
set bg=dark
set nocompatible
colo gruvbox
hi Normal guibg=NONE ctermbg=NONE

"Vim Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

" Set Plugins Here
 Plugin 'townk/vim-autoclose'
 Plugin 'alvan/vim-closetag'
 Plugin 'hail2u/vim-css3-syntax'
 Plugin 'etdev/vim-hexcolor'
 Plugin 'morhetz/gruvbox'
 Plugin 'scrooloose/nerdtree'
 Plugin 'vim-airline/vim-airline'
 Plugin 'fatih/vim-go'
 Plugin 'rust-lang/rust.vim'
 Plugin 'neoclide/coc.nvim'

call vundle#end()            " required
filetype plugin indent on

"Air-line
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
   hi airline_c  ctermbg=NONE guibg=NONE
   hi airline_tabfill ctermbg=NONE guibg=NONE

let g:deoplete#enable_at_startup = 1

" NerdTree
nmap <C-d> :NERDTreeToggle<CR>

" Tab config
set expandtab
set tabstop=2
set shiftwidth=2

" Coc.Nvim

" Tab Remap
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
