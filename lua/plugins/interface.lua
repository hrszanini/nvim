return {
	{
		"AlexvZyl/nordic.nvim",
		"sainnhe/gruvbox-material",
		"rebelot/kanagawa.nvim",
		"navarasu/onedark.nvim",
		priority = 1000,
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

	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").load_extension("ui-select")
		end
	}
}
