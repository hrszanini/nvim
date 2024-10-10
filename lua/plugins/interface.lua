return {
	{
		"AlexvZyl/nordic.nvim",
		"sainnhe/gruvbox-material",
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox-material")
			vim.cmd.hi("Comment gui=none")
			--vim.cmd.hi "Normal guibg=NONE ctermbg=NONE"
		end,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup({ indent = { tab_char = "▎" } })
		end,
	},

	{ 
		"lewis6991/gitsigns.nvim",
		config = function()
			require('gitsigns').setup()
		end
	},

	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({})
		end,
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
