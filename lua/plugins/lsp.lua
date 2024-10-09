return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({})

		local languages = require("config.lsp").languages
		local ensure_installed = {}

		for key, language in pairs(languages) do
			vim.list_extend(ensure_installed, language.formatter)
			vim.list_extend(ensure_installed, language.lsp)
		end

		require("mason-tool-installer").setup({
			ensure_installed = ensure_installed,
		})
	end,
}
