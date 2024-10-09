vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save File" })

vim.keymap.set("n", "<A-h>", "<C-PageUp>", { desc = "Next Tab" })
vim.keymap.set("n", "<A-l>", "<C-PageDown>", { desc = "Previous Tab" })
vim.keymap.set("n", "<A-q>", ":tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<A-e>", ":tabnew<CR>", { desc = "Open new empty Tab" })

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

vim.keymap.set("n", "\\", "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Telescope help keymaps" })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Telescope buffers" })

local undotree = require("undotree")
vim.keymap.set("n", "<leader>u", undotree.toggle, { noremap = true, silent = true })
