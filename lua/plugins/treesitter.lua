return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = vim.g.langs,
		sync_install = false,
		auto_install = true,
		ignore_install = {},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
			disable = function(lang, buf)
				local max_filesize = 100 * 1024 -- 100 KB
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max_filesize then
					return true
				end
			end,
		},
	},
}
