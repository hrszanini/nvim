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
		event = "VimEnter",
		config = function()
			local wk = require("which-key")

			wk.setup()
			wk.add {
				{ '<leader>c', desc = "Remote [C]onnection", icon = "" },
				{ '<leader>s', desc = "[S]earch", icon = "" },
				{ '<leader>t', icon = "" },
				{ '<leader>u', icon = "󰕌" },
				{ '<leader>p', icon = "" },
				{ '<leader>l', desc = "Lazy", icon = "󰒲" },
			}
		end
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
