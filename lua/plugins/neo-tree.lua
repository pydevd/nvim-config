-- Provides file system tree view
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			default_component_configs = {
				name = {
					use_git_status_colors = true,
				},
			},
		})
		vim.keymap.set("n", "<M-e>", ":Neotree filesystem reveal left<CR>", {})
	end,
}
