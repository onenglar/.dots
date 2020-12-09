call plug#begin('~/.vim/plugged')

"FUNC
"plug 'prettier/vim-prettier' "Prettier
Plug 'mcchrish/nnn.vim' "file manager
Plug 'jiangmiao/auto-pairs' "создает парные элементы: {}, ()
Plug 'mattn/emmet-vim'
Plug 'lifepillar/vim-mucomplete' "автокомплит
Plug 'tpope/vim-surround' "Оборачивает во что-то
Plug 'AndrewRadev/tagalong.vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'iloginow/vim-stylus'
Plug 'ctrlpvim/ctrlp.vim'

"STYLE
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/limelight.vim'
Plug 'sheerun/vim-polyglot'

"NOTES
Plug 'vimwiki/vimwiki'

call plug#end()

let g:vimwiki_list = [{'path': '~/Documents/Documents/MD-notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:ctrlp_show_hidden = 1

set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.styl setlocal filetype=stylus


set nocompatible
filetype off
set encoding=utf-8
syntax enable
set relativenumber
let mapleader=" "

set wildmenu " enhanced command line completion


" Cyrillic mapping
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"let g:cssColorVimDoNotMessMyUpdatetime = 1


let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html EmmetInstall

set completeopt+=menuone
set completeopt+=noselect


set softtabstop=2 shiftwidth=2 expandtab
set nowrap
set number
set noswapfile
set smartcase
set nobackup
set mouse=a
set clipboard=unnamedplus
set incsearch
set iminsert=0
set imsearch=0

"MOVE LINES:
"Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

"Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

"Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv



nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP


map <leader>gy :Goyo<CR>
map <leader>ll :LimeLight<CR>

"autocmd! User GoyoEnter set background=light
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!




"let g:AirlineTheme='molokai'
let g:airline_theme = 'gruvbox'


let vim_markdown_preview_github=1

function! s:goyo_enter()

  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240

  let g:limelight_conceal_guifg = 'DarkGray'
  let g:limelight_conceal_guifg = '#777777'

  let g:limelight_default_coefficient = 0.9
  let g:limelight_paragraph_span = 1
  set wrap
  Limelight

endfunction

function! s:goyo_leave()

endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()



"autocmd FileType javascript nmap <buffer> <C-]> :YcmCompleter GoTo<CR>

let g:gruvbox_contrast_dark = 'hard'
let g:indent_guides_enable_on_vim_startup = 1
set background=dark
colorscheme gruvbox
"colorscheme nord
