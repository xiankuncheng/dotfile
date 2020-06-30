" Theme setting 
colorscheme NeoSolarized

" ========== VIMWiki stuff ==========
map <leader>c :Calendar <CR>
let g:vimwiki_list = [{'path': $HOME.'/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
:nmap <Leader>dd <Plug>VimwikiDeleteLink

" ========== vim-rooter ==========
let g:rooter_patterns = ['.git/', 'package.json'] " How to find project root
let g:rooter_resolve_links = 1 " Resolve symlinks

" ========== w0rp/ale ==========
let g:ale_set_ballons = 1
let g:ale_linters = {'javascript': ['eslint', 'flow']}
 
" ========== FZF ==========
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
"
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.

" ========== Nerdtree Settings ==========
"autocmd VimEnter * NERDTree
let NERDTreeShowHidden = 0
let NERDTreeQuitOnOpen = 0

" Vim Close Tag Settings
let g:closetag_filenames= "*.html,*.xhtml,*.jsx,*.js,*.ts,*.tsx"

" vim-javascript
let g:javascript_plugin_flow = 1

" NerdCommenter settings
let g:NerdSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" EasyMotion
let g:EasyMotion_smartcase = 1

" JSX
let g:jsx_ext_required = 0
 
" Grep Search
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

autocmd QuickFixCmdPost *grep* cwindow

" ========== COC ============
" if hidden is not set, TextEdit might fail.
set hidden

" coc needs node 10
let g:coc_node_path = '/Users/xiankuncheng/.nvm/versions/node/v10.5.0/bin/node'

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" ========== COC-Prettier ==========
command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd CursorHold * silent call CocActionAsync('highlight')

" =========== AIRLINE ===========
" Coc Integration with Airline
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" =========== UltiSnips ===========
" Use python 3 for ultisnips
let g:UltiSnipsUsePythonVersion= 3

" Define directory for private snippets
let g:UltiSnipsSnippetsDir = '~/.config/nvim/ultisnips/'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsEditSplit="context"
