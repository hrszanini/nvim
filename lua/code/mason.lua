return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} }
		},
		config = function()
			require("mason").setup()
			require("mason-tool-installer").setup {
				ensure_installed = require("config.langs").list("formatter", "lsp", "dap", "linter")
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
			local prevent = require("config.langs").list("prevent_setup")
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			mason_lspconfig.setup({
				handlers = {
					function(server_name)
						if not vim.list_contains(prevent, server_name) then
							lspconfig[server_name].setup({})
						end
					end
				}
			})

			lspconfig.gdscript.setup({
				name = "godot",
				cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
				capabilities = capabilities
			})
		end,
	},
}
