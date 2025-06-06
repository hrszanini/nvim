return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		{ "williamboman/mason.nvim", opts = {} }
	},
	config = function()
		require("mason").setup()
		require("mason-tool-installer").setup {
			ensure_installed = {
				--Python
				"pylsp",
				"black",

				--Java
				"jdtls",

				--Lua
				"stylua",
				"lua_ls",

				--C/C++
				"clangd",
			}
		}
	end
}

