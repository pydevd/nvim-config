vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>tt", ":terminal<CR>", { desc = "Open terminal" })

-- Windows Controls
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {})
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {})

vim.api.nvim_set_keymap("n", "|", ":vs<CR>", {})
vim.api.nvim_set_keymap("n", "_", ":split<CR>", {})

-- Terminal Keymaps
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", {})
