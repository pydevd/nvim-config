-- Syntax Highlighting Plugin
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "rust", "lua", "luadoc", "vim", "vimdoc", "python", "toml" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
