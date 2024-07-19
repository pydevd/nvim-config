return {
	{
		-- Helps to manage external editing tooling like LSP, DAP, Linters, Formatter etc.
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- Ensures installation of tools and language servers
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		-- Connects LSP's with nvim
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- add machinery for LSP completions
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
				settings = {

					pyright = {
						disableOrganizeImports = true,
					},
					python = { analysis = { ignore = { "*" } } },
				},
			})
			lspconfig.ruff_lsp.setup({
				capabilities = capabilities,
				on_attach = function(client)
					client.server_capabilities.hoverProvider = false
				end,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				cmd = {
					"rustup",
					"run",
					"stable",
					"rust-analyzer",
				},
			})

			vim.keymap.set("n", "<K>", vim.lsp.buf.hover, { desc = "Show information about the symbol" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
