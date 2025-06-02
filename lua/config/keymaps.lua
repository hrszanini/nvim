vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("i", "jj", "<Esc>", {noremap = false})
vim.keymap.set("i", "kk", "<Esc>", {noremap = false})

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" }) vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", { desc = "Close window" })
vim.keymap.set("n", "<C-e>", "<cmd>new<cr>", { desc = "Open new window" })
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

vim.keymap.set("n", "\\", "<cmd>Oil<cr>", { desc = "Oil toggle" })
vim.keymap.set("n", "|", "<cmd>NvimTreeToggle<cr>", { desc = "NvimTree toggle" })

vim.keymap.set("n", "<leader>t", "<cmd>TodoQuickFix<cr>", { desc = "Todo list" })

vim.keymap.set("n", "<leader>m", "<cmd>Markview<cr>", { desc = "Markdown Preview Toogle" })

vim.keymap.set("n", "<leader>f", "<cmd>Format<cr>", { desc = "Format" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>sw", telescope.grep_string, { desc = "Telescope word grep" })
vim.keymap.set("n", "<leader>sg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>sh", telescope.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>sk", telescope.keymaps, { desc = "Telescope help keymaps" })
vim.keymap.set("n", "<leader>s.", telescope.oldfiles, { desc = "Telescope find oldfiles" })

vim.keymap.set("n", "gd", telescope.lsp_definitions, { desc = "[G]oto [D]efinition" })
vim.keymap.set("n", "gr", telescope.lsp_references, { desc = "[G]oto [D]efinition" })
vim.keymap.set("n", "gI", telescope.lsp_implementations, { desc = "[G]oto [I]mplementation" })

vim.keymap.set("n", "<leader>p", "<cmd> Telescope projects<cr>", { desc = "[P]rojects" })

vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code [A]ctions" })

local undotree = require("undotree")
vim.keymap.set("n", "<leader>u", undotree.toggle, { desc = "Undotree", noremap = true, silent = true })

local dap = require("dap")
vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, { desc = "Breakpoint" })
vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP start" })
vim.keymap.set("n", "<F6>", dap.step_over, { desc = "DAP step over" })
vim.keymap.set("n", "<F7>", dap.step_into, { desc = "DAP step into" })
vim.keymap.set("n", "<F8>", dap.step_out, { desc = "DAP step out" })

local harpoon = require("harpoon")
vim.keymap.set("n", "<A-c>", function() harpoon:list():clear() end, { desc = "Clear Harpoon list" })
vim.keymap.set("n", "<A-k>", function() harpoon:list():add() end)
vim.keymap.set("n", "<A-h>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<A-l>", function() harpoon:list():next() end)
vim.keymap.set("n", "<leader><leader>", function() Harpoon_toogle_telescope(harpoon:list()) end, { desc = "Harpoon" })

vim.keymap.set("n", "<A-.>", "<C-PageUp>", { desc = "Next Tab" })
vim.keymap.set("n", "<A-,>", "<C-PageDown>", { desc = "Previous Tab" })
vim.keymap.set("n", "<A-c>", "<cmd>tabclose<cr>", { desc = "Close Tab" })

vim.keymap.set("n", "<leader>db", "<cmd>tabnew<cr><cmd>DBUI<cr>", { desc = "DBUI" })
