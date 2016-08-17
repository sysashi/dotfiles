set nocompatible              " be iMproved, required 
filetype off                  " required

if has('nvim')
	set ttimeout
	set ttimeoutlen=0
    set termguicolors
endif

call plug#begin('~/.config/nvim')
" utilities
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim'
Plug 'racer-rust/vim-racer'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'airblade/vim-rooter'
Plug '~/.config/nvim/autoload'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'

" syntax
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'thinca/vim-ref'
Plug 'rust-lang/rust.vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/html5.vim'
Plug 'fatih/vim-go'
Plug 'klen/python-mode'

" colorschemes
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin indent on    " required
set background=dark
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode.
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
                    "
                    "
set mouse=a         " Enable the use of the mouse.

set noshowmode
set timeoutlen=700  " set breakindent

syntax on

" js syntax
let g:syntastic_javascript_checkers = ['eslint']

" vue syntax
au BufRead,BufNewFile *.vue set filetype=html

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2

" misc
set splitbelow
set splitright
set laststatus=2
set foldnestmax=10
set nofoldenable
set foldlevel=0
set completeopt-=preview
set wmnu
let g:session_autoload = 'no'
" let switch among the buffers without saving them
set hidden
" always popup
set confirm
set browsedir=buffer

" Start autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}

" Go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" rust 
let g:racer_cmd ="/usr/bin/racer"
let $RUST_SRC_PATH="/usr/src/rust/src/"
let g:rustfmt_autosave = 1

" sweet look
" let g:startify_custom_header =  map(split(system('fortune | cowsay'),'\n'), '" ". v:val')
let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}, {'z': '~/.zshrc'} ]
let g:startify_custom_header = startify#fortune#cowsay()
let g:startify_relative_path = 1
let g:startify_list_order = [
            \ ['   mru files in the current directory:'],
            \ 'dir',
            \ ['   mru files:'],
            \ 'files',
            \ ['   sessions:'],
            \ 'sessions',
            \ ['   bookmarks:'],
            \ 'bookmarks',
            \ ]
"-------------------------------------------------
"-------------------neovim------------------------
"-------------------terminal----------------------
"-------------------colors------------------------
"-------------------------------------------------
let g:terminal_color_0="#1b2b34"
let g:terminal_color_1="#ed5f67"
let g:terminal_color_2="#9ac895"
let g:terminal_color_3="#fbc963"
let g:terminal_color_4="#669acd"
"-------------------------------------------------

" let g:pencil_neutral_code_bg = 2   " 0=gray (def), 1=normal
" let g:pencil_higher_contrast_ui = 1   " 0=low (def), 1=high
" let g:pencil_terminal_italics = 1
let g:gruvbox_italic=1
let g:gruvbox_sign_column="bg0"
let g:gruvbox_contrast_dark="meduim"
let g:gruvbox_hls_cursor="orange"
colorscheme gruvbox



" mappings
vnoremap <C-c> "*y  " Copy to the system clipboard in visual mode
" remove trailing spaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <F6> :UndotreeToggle<cr>

nmap <silent> <Left> <c-w> <
nmap <silent> <Right> <c-w> >
nmap <silent> <Up> <c-w> +
nmap <silent> <Down> <c-w> -
cmap w!! w !sudo tee > /dev/null %

" exit terminal mode
:tnoremap <Esc> <C-\><C-n>

" moving around
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" easymotion set 'space' as prefix
" map <Leader><Space> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map  s <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-overwin-f)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_smartcase = 1

"jump to last buffer
nnoremap <leader><leader> <c-^>

"FZF mappings
nnoremap <silent><leader>z :GitFiles<CR>
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <silent><leader>c :Colors<CR>

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename'] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '>', 'right': '<' }
      \ }

let g:lightline.tab = {
    \ 'active': [ 'tabnum', 'filename', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

        "  &ft == 'unite' ? unite#get_status_string() :
function! MyFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ''._ : ''
  endif
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 40 ? lightline#mode() : ''
endfunction
augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.go,*.c,*.cpp call s:syntastic()
augroup END

function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction
