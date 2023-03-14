-- Remove trailing whitespaces
-- (if a file requires trailing spaces, exclude its type using the regex)
vim.cmd [[autocmd BufWritePre * %s/\s\+$//e ]]

-- Auto format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
