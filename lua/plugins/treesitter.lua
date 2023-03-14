require('nvim-treesitter.configs').setup({
  indent = {
    enable = true
  },
	highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- We must manually specify which parsers to install
	ensure_installed = {
    "heex",
    "elixir",
    "bash",
		"json",
		"lua",
    "yaml",
    "vim"
	},
})
