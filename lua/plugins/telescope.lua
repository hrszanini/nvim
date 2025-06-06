return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-tree/nvim-web-devicons", enabled = true},
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		local actions = require "telescope.actions"

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<c-n>"] = actions.move_selection_previous,
						["<c-p>"] = actions.move_selection_next,
						["<c-[>"] = actions.preview_scrolling_down,
						["<c-]>"] = actions.preview_scrolling_up,
						["<Esc>"] = actions.close
					}
				}
			}
		})
	end,
}

