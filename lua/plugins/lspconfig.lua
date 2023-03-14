local nvim_lsp = require("lspconfig")

-- add capabilities from nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

nvim_lsp["elixirls"].setup{
   cmd = { "/home/sysashi/elixir-ls/language_server.sh" };
   capabilities = capabilities;
   dialyzerEnabled = false
}

