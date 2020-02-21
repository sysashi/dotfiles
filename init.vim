set nocompatible              " be iMproved, required
filetype off                  " required

if has('nvim')
    let &t_ut=''
    set ttimeout
    set ttimeoutlen=0
    set termguicolors
    set inccommand=nosplit
endif

call plug#begin('~/.config/nvim')
" utilities
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim'
Plug '~/.config/nvim/autoload'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
" Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim'
Plug 'airblade/vim-rooter'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'rhysd/git-messenger.vim'
Plug 'mhinz/vim-mix-format'

" Syntax
"
" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" Elixir
Plug 'elixir-lang/vim-elixir'
" Plug 'slashmili/alchemist.vim'

" Zig
Plug 'ziglang/zig.vim'

" Other
Plug 'othree/html5.vim'

" Colorschemes.. yep
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'bluz71/vim-moonfly-colors'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'nightsense/cosmic_latte'
Plug 'ajh17/Spacegray.vim'
Plug 'everard/vim-aurora'
Plug 'tjammer/blayu.vim'
Plug 'junegunn/seoul256.vim'
Plug 'swalladge/antarctic-vim'
Plug 'yasukotelin/shirotelin'
Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/edge'

" Misc
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

filetype plugin indent on    " required
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
" and CTRL-U in Insert mode. This is a list of items, separated by commas. Each
" item allows a way to backspace
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
set colorcolumn=100 " show ruler

" treat underscores as word boundaries
set iskeyword-=_

" Signify
let g:signify_vcs_list = ['git']
let g:signify_realtime = 100

"--- sweet look ---
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
" let g:terminal_color_0="#1b2b34"
" let g:terminal_color_1="#ed5f67"
" let g:terminal_color_2="#9ac895"
" let g:terminal_color_3="#fbc963"
" let g:terminal_color_4="#669acd"
"-------------------------------------------------

" Colorscheme settings

let g:mix_format_on_save = 1

let g:enable_bold_font = 1
let g:enable_italic_font = 0

set signcolumn=yes

"" Night
" set background=dark
" colo iceberg
" lightline = iceberg / nord?


"" Day
set background=light
colo shirotelin
" lightline = OldHope

highlight clear SignColumn
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" mappings
vnoremap <C-c> "*y  " Copy to the system clipboard in visual mode

" remove trailing spaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h :SignifyToggleHighlight<CR>

nmap <silent> <Left> <c-w> <
nmap <silent> <Right> <c-w> >
nmap <silent> <Up> <c-w> +
nmap <silent> <Down> <c-w> -
cmap w!! w !sudo tee > /dev/null %

" exit terminal mode
" tnoremap <Esc> <C-\><C-n>

" Use space as leader
let mapleader = "\<Space>"

" moving around
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

autocmd FileType fzf tnoremap <buffer> <C-j> <Down>
autocmd FileType fzf tnoremap <buffer> <C-k> <Up>

" Tab completion
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" jump to last buffer
nnoremap <leader><leader> <c-^>

""" Deoplete-------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1

" setting python providers (for deoplete)
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog  = '/usr/local/bin/python2'

""" FZF -----------------------------------------------------------------------
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = &lines - 3
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': 1,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

" mappings
nnoremap <silent><leader>p :GFiles<CR>
nnoremap <silent><leader>c :GFiles?<CR>
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><leader>s :Rg<CR>
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <silent><leader>] :Colors<CR>

""" LightLine -----------------------------------------------------------------

command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

let g:lightline = {
            \ 'colorscheme': 'OldHope',
            \ 'mode_map': {'c': 'N', 'i': 'I', 'n': 'N', 'v': 'V'},
            \ 'active': {
            \   'left': [['mode', 'paste'], ['fugitive', 'filename'] ],
            \   'right': [['lineinfo', 'sy'], [], ['fileformat', 'fileencoding', 'filetype']]
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
            \   'sy': 'LightlineSignify',
            \ },
            \ 'component_expand': {},
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '|', 'right': '|' }
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
        return strlen(_) ? '^'._ : ''
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

function! LightlineSignify()
    let [added, modified, removed] = sy#repo#get_stats()
    let l:sy = ''
    for [flag, flagcount] in [
                \   [exists("g:signify_sign_add")?g:signify_sign_add:'+', added],
                \   [exists("g:signify_sign_delete")?g:signify_sign_delete:'-', removed],
                \   [exists("g:signify_sign_change")?g:signify_sign_change:'!', modified]
                \ ]
        if flagcount> 0
            let l:sy .= printf('%s%d', flag, flagcount)
        endif
    endfor
    if !empty(l:sy)
        return printf('%s', l:sy)
    else
        return ''
    endif
endfunction

""" LanguageClient -----------------------------------------------------------
" elixir': ['~/builds/elixir-ls-bin/language_server.sh'],
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

function! ToggleDarkTheme()
    set background=dark

    colorscheme iceberg

    call lightline#init()
    execute 'source' globpath(&rtp, 'autoload/lightline/colorscheme/iceberg.vim')
    call lightline#colorscheme()
    call lightline#update()
endfunction

function! ToggleLightTheme()
    set background=dark

    colorscheme shirotelin

    call lightline#init()
    execute 'source' globpath(&rtp, 'autoload/lightline/colorscheme/OldHope.vim')
    call lightline#colorscheme()
    call lightline#update()
endfunction

command! ToggleDarkTheme call ToggleDarkTheme()
command! ToggleLightTheme call ToggleLightTheme()
