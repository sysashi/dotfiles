" deps:
"   deno (for ddc)
"   fzf and rg
"   bat (hightlight syntax in fzf window)

if has('nvim')
    let &t_ut=''
    set ttimeout
    set ttimeoutlen=0
    set termguicolors
    set inccommand=nosplit
endif

call plug#begin('~/.config/nvim')

" ddc completion
" Plug 'Shougo/ddc.vim'
" Plug 'Shougo/ddc-ui-inline'
" Plug 'vim-denops/denops.vim'
" Plug 'Shougo/ddc-around'
" Plug 'Shougo/ddc-matcher_head'
" Plug 'Shougo/ddc-sorter_rank'
" Plug 'Shougo/ddc-nvim-lsp'
" Plug 'matsui54/ddc-buffer'

" cmp
"
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'tzachar/fuzzy.nvim'
Plug 'tzachar/cmp-fuzzy-buffer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

"" utilities
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug '~/.config/nvim/autoload'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'axelf4/vim-strip-trailing-whitespace'
" Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim'
Plug 'airblade/vim-rooter'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'rhysd/git-messenger.vim'
Plug 'mhinz/vim-mix-format'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dewyze/vim-tada'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

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
Plug 'cuducos/yaml.nvim'

" Colorschemes.. yep
" nice green-ish ones - warlock, everforest, seoul256, deus(?)
" blue-ish - nord (!), iceberg
" light - shirotelin, cosmic_latte, edge
" other mentions: melange, snow, gruvbox, spacegray, nightfly, catppuccin
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
" Plug 'swalladge/antarctic-vim'
Plug 'yasukotelin/shirotelin'
Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/edge'
Plug 'linusng/green-shades.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'noahfrederick/vim-noctu'
Plug 'ajmwagar/vim-deus'
Plug 'tssm/fairyfloss.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'MisanthropicBit/vim-warlock'
Plug 'Pocco81/Catppuccino.nvim'
Plug 'mcchrish/zenbones.nvim'
Plug 'savq/melange'
Plug 'aditya-azad/candle-grey'
Plug 'casonadams/walh'
Plug 'sainnhe/everforest'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'MultisampledNight/morphtype'
Plug 'EdenEast/nightfox.nvim'
Plug 'challenger-deep-theme/vim'
Plug 'vigoux/oak'


" Misc
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

filetype plugin indent on    " required
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
set tabstop=2       " Number of spaces that a <Tab> in the file counts for.
set softtabstop=2

set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.

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

" syntax on

" js syntax
let g:syntastic_javascript_checkers = ['eslint']

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2

" misc
set splitbelow
set splitright
set laststatus=2
set foldnestmax=10
set nofoldenable
set foldlevel=0
" set completeopt-=preview
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

let g:mix_format_on_save = 0
let g:mix_format_silent_errors = 1

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
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:python_host_prog  = '/usr/local/bin/python2'

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

let $BAT_THEME='GitHub'

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" mappings
nnoremap <silent><leader>p :GFiles<CR>
nnoremap <silent><leader>c :GFiles?<CR>
nnoremap <silent><leader>g :GGrep<CR>
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
    if &ft !~? 'vimfiler\|gundo' && exists("FugitiveHead")
        let _ = FugitiveHead()
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
    let $BAT_THEME='Nord'

    colorscheme iceberg

    call lightline#init()
    execute 'source' globpath(&rtp, 'autoload/lightline/colorscheme/iceberg.vim')
    call lightline#colorscheme()
    call lightline#update()
endfunction

function! ToggleLightTheme()
    set background=dark
    let $BAT_THEME='GitHub'

    colorscheme shirotelin

    call lightline#init()
    execute 'source' globpath(&rtp, 'autoload/lightline/colorscheme/OldHope.vim')
    call lightline#colorscheme()
    call lightline#update()
endfunction

command! ToggleDarkTheme call ToggleDarkTheme()
command! ToggleLightTheme call ToggleLightTheme()

lua <<EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "elixir" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
      enable = true,              -- false will disable the whole extension
      disable = {},  -- list of language that will be disabled
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = false
    }
  }
EOF

set completeopt=menu,menuone,noselect

lua <<EOF
   -- Setup nvim-cmp.
   local cmp = require'cmp'

   cmp.setup({
     snippet = {
       -- REQUIRED - you must specify a snippet engine
       expand = function(args)
         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
         -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
       end,
     },
     mapping = {
       ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
       ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
       ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
       ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
       ['<C-e>'] = cmp.mapping({
         i = cmp.mapping.abort(),
         c = cmp.mapping.close(),
       }),
       ['<Tab>'] = cmp.mapping.select_next_item(),
       -- ['<Tab>'] = cmp.mapping(cmp.select_next_item({ behavior = cmp.SelectBehavior.Replace })),
       -- ['<Tab>'] = cmp.mapping.confirm({ select = true }),
     },
     sources = cmp.config.sources({
       { name = 'nvim_lsp' },
       { name = 'vsnip' }, -- For vsnip users.
       -- { name = 'luasnip' }, -- For luasnip users.
       -- { name = 'ultisnips' }, -- For ultisnips users.
       -- { name = 'snippy' }, -- For snippy users.
     }, {
       { name = 'buffer' },
       { name = 'fuzzy_buffer' },
     })
   })

   -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
   cmp.setup.cmdline('/', {
     sources = {
       { name = 'buffer' }
     }
   })

   -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
   cmp.setup.cmdline(':', {
     sources = cmp.config.sources({
       { name = 'path' }
     }, {
       { name = 'cmdline' }
     })
   })

   -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
   require'lspconfig'.elixirls.setup {
       cmd = { "/home/sysashi/elixir-ls/language_server.sh" };
       capabilities = capabilities;
       dialyzerEnabled = false
   }
EOF

lua <<EOF
  require'lspconfig'.elixirls.setup{
    -- Unix
    cmd = { "/home/sysashi/elixir-ls/language_server.sh" };
    }
EOF

" ddc config
" call ddc#custom#patch_global('sources', ['nvim-lsp', 'around', 'buffer'])
"
" call ddc#custom#patch_global({
"       \ 'keywordPattern': '[a-zA-Z_]\w*',
"       \ 'smartCase': v:true,
"       \ })
"
" " Use matcher_head and sorter_rank.
" " https://github.com/Shougo/ddc-matcher_head
" " https://github.com/Shougo/ddc-sorter_rank
" call ddc#custom#patch_global('sourceOptions', {
"       \ '_': {
"       \   'matchers': ['matcher_head'],
"       \   'sorters': ['sorter_rank']},
"       \ 'nvim-lsp': {
"       \   'mark': 'lsp',
"       \   'forceCompletionPattern': '\.\w*|:\w*|->\w*' },
"       \ })
"
" " Change source options
" call ddc#custom#patch_global('sourceOptions', {
"       \ 'around': {'mark': 'A'},
"       \ 'buffer': {'mark': 'B'},
"       \ })
" call ddc#custom#patch_global('sourceParams', {
"       \ 'around': {'maxSize': 500},
"       \ 'buffer': {
"       \   'requireSameFiletype': v:false,
"       \   'limitBytes': 5000000,
"       \   'fromAltBuf': v:true,
"       \   'forceCollect': v:true,
"       \ },
"       \ })
"
" " Customize settings on a filetype
" "
" " call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
" " call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
" "       \ 'clangd': {'mark': 'C'},
" "       \ })
" call ddc#custom#patch_filetype('markdown', 'sourceParams', {
"       \ 'around': {'maxSize': 100},
"       \ })
"
" " Mappings
"
" " <TAB>: completion.
" inoremap <silent><expr> <TAB>
" \ ddc#map#pum_visible() ? '<C-n>' :
" \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
" \ '<TAB>' : ddc#map#manual_complete()
"
" " <S-TAB>: completion back.
" inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'
"
" " Use ddc.
" call ddc#enable()

lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
