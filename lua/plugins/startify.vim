let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.lua'}, {'z': '~/.zshrc'} ]
let g:startify_custom_header = startify#fortune#cowsay()
let g:startify_custom_header_center = 1
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
