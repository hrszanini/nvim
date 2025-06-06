return {
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
}
