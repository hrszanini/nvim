local languages = {
	c = {
	},
	cpp = {
	},
	java = {
		lsp = "jdtls"
	},
	javascript = {
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
