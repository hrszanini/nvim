return {
	{
		"AlexvZyl/nordic.nvim",
		"sainnhe/gruvbox-material",
		"rebelot/kanagawa.nvim",
		"navarasu/onedark.nvim",
		"NLKNguyen/papercolor-theme",
		"wadetandy/vim-bloomberg",
		"EdenEast/nightfox.nvim",
		"sainnhe/sonokai",
		"AlessandroYorba/Alduin",
		"sainnhe/everforest",
		"kepano/flexoki-neovim",
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
				{ '<leader>o', icon = "" },
				{ '<leader>l', desc = "Lazy", icon = "󰒲" },
			}
		end
	},

	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("noice").setup({
				lsp = {
					progress = {
						enabled = false,
					},
				},
				presets = {
					long_message_to_split = true, -- long messages will be sent to a split
					lsp_doc_border = false,
					bottom_search = true
				}
			})
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
			require("lualine").setup({
				options = {
					component_separators = { left = '', right = '' },
					section_separators = { left = '', right = '' },
				}
			})
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
