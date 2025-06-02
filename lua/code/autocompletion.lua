return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			build = (function()
				-- if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
				-- 	return
				-- end
				return "make install_jsregexp"
			end)(),
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
		},
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		luasnip.config.setup({})

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			completion = {},
			mapping = cmp.mapping.preset.insert({
				["<c-n>"] = cmp.mapping.select_next_item(),
				["<cm-n>"] = cmp.mapping.select_prev_item(),
				["<c-p>"] = cmp.mapping.scroll_docs(-4),
				["<cm-p>"] = cmp.mapping.scroll_docs(4),
				["<TAB>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete({}),
				["<C-l>"] = cmp.mapping(function()
					if luasnip.expand_or_locally_jumpable() then
						luasnip.expand_or_jump()
					end
				end, { "i", "s" }),
				["<C-h>"] = cmp.mapping(function()
					if luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					end
				end, { "i", "s" }),
			}),
			sources = {
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "path" },
				{ name = "orgmode" },
			},
		})

		-- cmp.setup.filetype({ 'sql' }, {
		-- 	sources = {
		-- 		{ name = "vim-dadbod-completion" },
		-- 		{ name = "buffer" }
		-- 	}
		-- })
	end,
}
