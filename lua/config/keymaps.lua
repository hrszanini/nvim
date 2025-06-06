vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("i", "jj", "<Esc>", { noremap = false })
vim.keymap.set("i", "kk", "<Esc>", { noremap = false })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>")

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "K", vim.lsp.buf.hover)

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Diagnostic Errors" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic QuickList" })

-- NvimTree
vim.keymap.set("n", "|", "<cmd>NvimTreeToggle<cr>")

-- LazyGit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- Undotree
local undotree = require("undotree")
vim.keymap.set("n", "<leader>u", undotree.toggle, { desc = "Undotree", noremap = true, silent = true })

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", telescope.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>sg", telescope.live_grep, { desc = "Grep Search" })
vim.keymap.set("n", "<leader>sw", telescope.grep_string, { desc = "Find Word" })
vim.keymap.set("n", "<leader>sh", telescope.help_tags, { desc = "Find Help" })

vim.keymap.set("n", "<leader>gd", telescope.lsp_definitions, { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>gr", telescope.lsp_references, { desc = "Go to References" })
vim.keymap.set("n", "<leader>gI", telescope.lsp_implementations, { desc = "Go to Implementations" })

