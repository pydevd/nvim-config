return {
	-- Allows to use external tools like linters and formatters inside neovim.
	-- Install them using Mason
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})
		vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
	end,
}
