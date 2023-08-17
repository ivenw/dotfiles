local km = vim.keymap

-- Don't yank when single deleting
km.set("n", "x", '"_x')

-- Split management
km.set("n", "<leader>sv", "<C-w>v")
km.set("n", "<leader>sh", "<C-w>s")
km.set("n", "<leader>sx", ":close<CR>")

-- Tab managment
km.set("n", "<leader>tn", ":tabnew<CR>")
km.set("n", "<leader>tx", ":tabclose<CR>")
km.set("n", "K", ":tabnext<CR>")
km.set("n", "J", ":tabprevious<CR>")

-- Plugins

-- Telescope
km.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Find file" })
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<esc>"] = require("telescope.actions").close,
			},
		},
	},
})
