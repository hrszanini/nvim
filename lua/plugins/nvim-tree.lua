return {
	"nvim-tree/nvim-tree.lua",
	config = function ()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 60,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			}
		})
	end
	
}
