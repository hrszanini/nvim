return {
	languages = {
		lua = {
			formatter = { "stylua" },
			lsp = { "lua_ls" },
		},
		python = {
			formatter = { "black" },
			lsp = { "pylsp" },
		},
		rust = {
			formatter = { "rustfmt" },
			lsp = { "rust_analyzer" },
		},
		java = {
			formatter = {},
			lsp = { "jdtls" },
		},
	},
	binds = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "[G]oto [D]efinition" })
		vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "[G]oto [D]efinition" })
		vim.keymap.set("n", "gI", builtin.lsp_implementations, { desc = "[G]oto [I]mplementation" })

		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
		vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
	end,
}
