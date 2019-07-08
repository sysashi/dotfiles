set nocompatible              " be iMproved, required
filetype off                  " required

if has('nvim')
    let &t_ut=''
    set ttimeout
    set ttimeoutlen=0
    set termguicolors
    set inccommand=nosplit
endif

" must be here before ale is loaded
" let g:ale_completion_enabled = 1
" set completeopt+=noinsert

call plug#begin('~/.config/nvim')
" utilities
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
" Plug 'Shougo/deoplete.nvim'
Plug '~/.config/nvim/autoload'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'w0rp/ale'
" Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim'
" Plug 'airblade/vim-rooter'

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

" Misc
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

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
"" let g:startify_custom_header =  map(split(system('fortune | cowsay'),'\n'), '" ". v:val')
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

let g:enable_bold_font = 1
let g:enable_italic_font = 1

" Colorscheme specific settings
let g:gruvbox_italic=1
let g:gruvbox_sign_column="bg0"
let g:gruvbox_contrast_dark="meduim"
let g:gruvbox_hls_cursor="orange"


let g:spacegray_use_italics = 1

"cosmic_latte PaperColor blayu snow  spacegray stellarized hybrid_material iceberg gruvbox

" let g:seoul256_background = 235
" let g:seoul256_light_background = 255
" colo seoul256-light
" color seoul256
" let g:seoul256_srgb = 1


colo iceberg

set signcolumn=yes
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
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" jump to last buffer
nnoremap <leader><leader> <c-^>

" Ale
" set omnifunc=ale#completion#OmniFunc
" Start autocomplete
"
let g:ale_elixir_elixir_ls_release = '/Users/sysashi/devel/elixir-ls-bin'
let g:ale_fix_on_save = 1

let g:ale_fixers = {
            \  '*': ['remove_trailing_lines', 'trim_whitespace'],
            \  'javascript': ['prettier'],
            \  'html': ['prettier'],
            \  'elixir': ['mix_format'],
            \}

let g:ale_linters = {
            \  'elixir': ['elixir-ls'],
            \  'javascript': ['prettier', 'eslint', 'tsserver'],
            \}

" Setting python providers (for deoplete)
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog  = '/usr/local/bin/python2'

" Deoplete
let g:deoplete#enable_at_startup = 1

" let g:deoplete#sources = {'_': ['ale', 'buffer']}
" call deoplete#custom#source('ale', 'rank', 150)

" FZF
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" command! -bang -nargs=* FindAll call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" FZF mappings
nnoremap <silent><leader>p :GFiles<CR>
nnoremap <silent><leader>c :GFiles?<CR>
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><leader>s :Rg<CR>
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <silent><leader>] :Colors<CR>

" Lightline config
let g:lightline = {
            \ 'colorscheme': 'iceberg',
            \ 'mode_map': {'c': 'N', 'i': 'I', 'n': 'N', 'v': 'V'},
            \ 'active': {
            \   'left': [['mode', 'paste'], ['cocstatus', 'fugitive', 'filename'] ],
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
            \   'cocstatus': 'coc#status'
            \ },
            \ 'component_expand': {
            \   'ale': 'LinterStatus',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '|', 'right': '|' }
            \ }

let g:lightline.tab = {
            \ 'active': [ 'tabnum', 'filename', 'modified' ],
            \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
                \   '%dW %dE',
                \   all_non_errors,
                \   all_errors
                \)
endfunction

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

" Goyo

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" CoC
"
" suggestions from the README

set updatetime=300
set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
