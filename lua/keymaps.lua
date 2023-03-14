vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Jump to last buffer
vim.keymap.set("n", "<leader><leader>", "<C-^>", {})

-- Move around windows (shifted to the right)
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Telescope mappings
vim.keymap.set("n", "<leader>p", "<Cmd>Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>f", "<Cmd>Telescope find_files hidden=true<CR>", {})
vim.keymap.set("n", "<leader>s", "<Cmd>Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>b", "<Cmd>Telescope buffers<CR>", {})
vim.keymap.set("n", "<leader>c", "<Cmd>Telescope git_status<CR>", {})

-- Show line diagnostics
vim.keymap.set("n", "<leader>i", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>', {})

-- Open local diagnostics in local list
vim.keymap.set("n", "<leader>I", "<Cmd>lua vim.diagnostic.setloclist()<CR>", {})

-- Open all project diagnostics in quickfix list
vim.keymap.set("n", "<leader><A-I>", "<Cmd>lua vim.diagnostic.setqflist()<CR>", {})
