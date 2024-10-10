return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} }
		},
		config = function()
			require("mason").setup()
			require("mason-tool-installer").setup {
				ensure_installed = require("config.langs").list("formatter", "lsp")
			}
		end
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			{ 'folke/neodev.nvim', opts = {} },
			{ 'j-hui/fidget.nvim', opts = {} },
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")
			local lspconfig = require("lspconfig")

			mason_lspconfig.setup({
				handlers = {
					function(server_name)
						lspconfig[server_name].setup({})
					end
				}
			})
		end,
	},
}
