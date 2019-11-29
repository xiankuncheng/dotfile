call plug#begin('~/.vim/plugged')

Plug 'iCyMind/NeoSolarized' " Solarized
Plug 'scrooloose/nerdtree' " File Tree
Plug 'scrooloose/nerdcommenter' " Comment Tools
Plug 'bling/vim-airline' " Bottom Status Bar
Plug 'tpope/vim-fugitive' " Git Wrapper
Plug 'tpope/vim-surround' " Surround
Plug 'airblade/vim-gitgutter' " Diff in gutter
Plug 'jiangmiao/auto-pairs' " Auto Pair
Plug 'easymotion/vim-easymotion' " Easymotion
Plug 'mxw/vim-jsx' " VIM-JSX
Plug 'alvan/vim-closetag' " Vim closetag
Plug 'vimwiki/vimwiki' " Vim wiki
Plug 'prettier/vim-prettier' " Prettier
Plug 'pangloss/vim-javascript' "VimJS  - for folding
Plug 'jparise/vim-graphql' " GraphQL for Vim
Plug 'airblade/vim-rooter' " Change working directory
Plug 'w0rp/ale' " Check syntax (linting)
Plug 'itchyny/calendar.vim' "Calendar for Vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Search content in files
Plug 'junegunn/fzf.vim' " Search content in files
Plug 'jceb/vim-orgmode' " Text outlining and task management for Vim based on Emacs' Org-Mode
Plug 'freitass/todo.txt-vim' " Vim plugin for Todo.txt
Plug 'google/vim-maktaba' " Code Review Plugin
Plug 'google/vim-codereview' " Code Review Plugin

" Snippets and shortcuts
Plug 'SirVer/ultisnips' " Used for snippet libraries
" Language Stuff
Plug 'leafgarland/typescript-vim' " Typescript syntax highlighting

" COC extensions
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-yaml', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-tsserver', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-json', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-tslint-plugin', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-eslint', { 'do': { -> 'yarn install --frozen-lockfile' } }

" COC extensions installed via :CocInstall plugin_name
" coc-prettier

call plug#end()
