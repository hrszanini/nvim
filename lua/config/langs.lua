local languages = {
	c = {
		lsp = "clangd"
	},
	cpp = {
	},
	css = {
		lsp = "css-lsp",
		formatter = "prettier"
	},
	java = {
		lsp = "jdtls",
		dap = "java-debug-adapter",
		prevent_setup = "jdtls"
	},
	javascript = {
		lsp = "eslint",
		formatter = "prettier"
	},
	lua = {
		formatter = "stylua",
		lsp = "lua_ls",
	},
	markdown = {
		formatter = "markdownlint",
		lsp = "markdown_oxide"
	},
	python = {
		formatter = "black",
		lsp = "pylsp",
		dap = "debugpy"
	},
	rust = {
		lsp = "rust_analyzer"
	},
}

return {
	configs = languages,
	list = function(...)
		local configs = { ... }
		local values = {}

		for i = 1, #configs do
			for _, language in pairs(languages) do
				local value = language[configs[i]]

				if value ~= nil then
					vim.list_extend(values, { value })
				end
			end
		end
		return values
	end,
}
