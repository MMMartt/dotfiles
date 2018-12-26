call plug#begin('~/.vim/plugged')

"""" common stuffs

Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

" easymotion
Plug 'easymotion/vim-easymotion'

" themes
Plug 'joshdick/onedark.vim'
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

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

Plug 'Valloric/YouCompleteMe'
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""" YCM Setting""""""""""""""""""
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
" let g:ycm_python_binary_path = '/usr/local/bin/python3'
" let g:ycm_global_ycm_extra_conf = '~/Files/Configs/VimConfig/YCM/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <c-f> :YcmCompleter FixIt<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_semantic_triggers = {'haskell' : ['.']}
