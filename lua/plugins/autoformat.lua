local languages = require("config.lsp").languages
local formatters_by_ft = {}

for key, value in pairs(languages) do
	formatters_by_ft[key] = value.formatter
end

return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = formatters_by_ft,
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
