return {
	"tpope/vim-sleuth",

	{ "lewis6991/gitsigns.nvim", opts = {} },
	{ "lukas-reineke/indent-blankline.nvim", opts = {} },
	{
		"numToStr/Comment.nvim",
		opts = {},
		config = function()
			require("Comment").setup()
		end,
	},
	{ "nvim-lualine/lualine.nvim", opts = {} },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		"ggandor/leap.nvim",
		dependencies = "tpope/vim-repeat",
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}

-- -- config treesitter
-- require("nvim-treesitter.configs").setup({
-- 	-- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
-- 	auto_install = false,

-- 	highlight = { enable = true },
-- 	indent = { enable = true, disable = { "python" } },
-- 	incremental_selection = {
-- 		enable = true,
-- 		keymaps = {
-- 			init_selection = "<c-space>",
-- 			node_incremental = "<c-space>",
-- 			scope_incremental = "<c-s>",
-- 			node_decremental = "<M-space>",
-- 		},
-- 	},
-- 	textobjects = {
-- 		select = {
-- 			enable = true,
-- 			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
-- 			keymaps = {
-- 				-- You can use the capture groups defined in textobjects.scm
-- 				["aa"] = "@parameter.outer",
-- 				["ia"] = "@parameter.inner",
-- 				["af"] = "@function.outer",
-- 				["if"] = "@function.inner",
-- 				["ac"] = "@class.outer",
-- 				["ic"] = "@class.inner",
-- 			},
-- 		},
-- 		move = {
-- 			enable = true,
-- 			set_jumps = true, -- whether to set jumps in the jumplist
-- 			goto_next_start = {
-- 				["]m"] = "@function.outer",
-- 				["]]"] = "@class.outer",
-- 			},
-- 			goto_next_end = {
-- 				["]M"] = "@function.outer",
-- 				["]["] = "@class.outer",
-- 			},
-- 			goto_previous_start = {
-- 				["[m"] = "@function.outer",
-- 				["[["] = "@class.outer",
-- 			},
-- 			goto_previous_end = {
-- 				["[M"] = "@function.outer",
-- 				["[]"] = "@class.outer",
-- 			},
-- 		},
-- 		swap = {
-- 			enable = true,
-- 			swap_next = {
-- 				["<leader>a"] = "@parameter.inner",
-- 			},
-- 			swap_previous = {
-- 				["<leader>A"] = "@parameter.inner",
-- 			},
-- 		},
-- 	},
-- })

-- -- Setup mason so it can manage external tooling
-- require("mason").setup()
