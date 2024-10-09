local lsp_name = require("config.lsp").languages.python.lsp[1]
local lspconfig = require("lspconfig")

lspconfig[lsp_name].setup({
	on_attach = function()
		require("config.lsp").binds()
	end,
})
