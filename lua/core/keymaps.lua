local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Esc>", "<cmd>nohlsearch<cr>", opts)

keymap("i", "jj", "<Esc>", { noremap = false })
keymap("i", "kk", "<Esc>", { noremap = false })

keymap("n", "<C-h>", "<C-w><C-h>", opts)
keymap("n", "<C-j>", "<C-w><C-j>", opts)
keymap("n", "<C-k>", "<C-w><C-k>", opts)
keymap("n", "<C-l>", "<C-w><C-l>", opts)

keymap("n", "<C-s>", "<cmd>w<cr>", opts)
keymap("n", "<C-q>", "<cmd>q<cr>", opts)

keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
keymap("n", "<leader>a", vim.lsp.buf.code_action, opts)
keymap("n", "K", vim.lsp.buf.hover, opts)

keymap("n", "<leader>e", vim.diagnostic.open_float, opts)
keymap("n", "<leader>q", vim.diagnostic.setloclist, opts)

-- BarBar
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

keymap('n', '<A-q>', '<Cmd>BufferClose<CR>', opts)

-- NvimTree
keymap("n", "\\", "<cmd>NvimTreeToggle<cr>", opts)

-- LazyGit
keymap("n", "<leader>lg", "<cmd>LazyGit<cr>", opts)

-- Formatter
keymap("n", "<leader>f", "<cmd>Format<cr>", { desc = "Format" })

-- Undotree
local undotree = require("undotree")
keymap("n", "<leader>u", undotree.toggle, { desc = "Undotree", noremap = true, silent = true })

-- Telescope
local telescope = require("telescope.builtin")

keymap("n", "<leader>sf", telescope.find_files, { desc = "Find Files" })
keymap("n", "<leader>sg", telescope.live_grep, { desc = "Grep Search" })
keymap("n", "<leader>sw", telescope.grep_string, { desc = "Find Word" })
keymap("n", "<leader>sh", telescope.help_tags, { desc = "Find Help" })
keymap('n', '<leader><leader>', telescope.buffers, { desc = "Find existing buffers" })

keymap("n", "<leader>gd", telescope.lsp_definitions, { desc = "Go to Definition" })
keymap("n", "<leader>gr", telescope.lsp_references, { desc = "Go to References" })
keymap("n", "<leader>gI", telescope.lsp_implementations, { desc = "Go to Implementations" })

