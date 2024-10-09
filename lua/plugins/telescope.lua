return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		require("telescope").setup({})
	end,
}
