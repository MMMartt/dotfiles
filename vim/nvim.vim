set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" eof native configuration section

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" auto complete?
Plug 'w0rp/ale'
Plug 'ervandew/supertab'

" snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For Denite features
Plug 'Shougo/denite.nvim'
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'zchee/deoplete-clang'
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/7.0.0_1/lib/libclang.dylib'

"""" common stuffs

Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

" easymotion
Plug 'easymotion/vim-easymotion'

" themes
Plug 'joshdick/onedark.vim'
" "Plug 'cocopon/onedark.vim'
Plug 'altercation/vim-colors-solarized'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" SML
Plug 'jez/vim-better-sml'

" vimux
Plug 'benmills/vimux'

" nerdcommenter
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()
