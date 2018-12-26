set omnifunc=syntaxcomplete#Complete
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set wildmenu
set showcmd
set cmdheight=2
set laststatus=2
set ruler
set number
filetype plugin on
set clipboard+=unnamed
syntax enable
set cursorline
set confirm
set smartindent
filetype plugin indent on
" default
set expandtab
set shiftwidth=2
set tabstop=2

" ignore case while searching lowercase
set ignorecase
" do not ignore case while searching uppercase
set smartcase
" regex
set magic
" hl search
set hlsearch
" move to found
set incsearch
set cc=80
set scrolloff=4
set showmatch
set matchtime=1
set list lcs=tab:>-,trail:-
set history=50
set foldmethod=indent
set foldlevelstart=99
set report=0
set autoread

set mouse=a
set selection=exclusive
set selectmode=mouse,key

" For conceal markers.
set conceallevel=2 concealcursor=niv



set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap {<CR> {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
" 中文输入法会插入很多单引号，故不做不全
" :inoremap ' ''<ESC>i
function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction

"""" color theme
set background=dark
colorscheme onedark
set t_Co=256

set termguicolors
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
"""" plugin

"""" vim easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""" better sml
augroup vimbettersml
  au!

  " ----- Keybindings -----

  au FileType sml nnoremap <silent> <buffer> <leader>t :SMLTypeQuery<CR>
  au FileType sml nnoremap <silent> <buffer> gd :SMLJumpToDef<CR>

  " open the REPL terminal buffer
  au FileType sml nnoremap <silent> <buffer> <leader>is :SMLReplStart<CR>
  " close the REPL (mnemonic: k -> kill)
  au FileType sml nnoremap <silent> <buffer> <leader>ik :SMLReplStop<CR>
  " build the project (using CM if possible)
  au FileType sml nnoremap <silent> <buffer> <leader>ib :SMLReplBuild<CR>
  " for opening a structure, not a file
  au FileType sml nnoremap <silent> <buffer> <leader>io :SMLReplOpen<CR>
  " use the current file into the REPL (even if using CM)
  au FileType sml nnoremap <silent> <buffer> <leader>iu :SMLReplUse<CR>
  " clear the REPL screen
  au FileType sml nnoremap <silent> <buffer> <leader>ic :SMLReplClear<CR>
  " set the print depth to 100
  au FileType sml nnoremap <silent> <buffer> <leader>ip :SMLReplPrintDepth<CR>

  " ----- Other settings -----

  " Uncomment to try out conceal characters
  "au FileType sml setlocal conceallevel=2

  " Uncomment to try out same-width conceal characters
  "let g:sml_greek_tyvar_show_tick = 1
augroup END
