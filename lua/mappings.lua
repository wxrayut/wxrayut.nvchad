require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Save file
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Find functions, classes, symbols with Telescope (requires telescope.nvim)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help tags" })
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find symbols (document)" })
map("n", "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Find symbols (workspace)" })

-- Navigate diagnostics
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })

-- Quickfix navigation
map("n", "]q", "<cmd>cnext<CR>", { desc = "Next quickfix" })
map("n", "[q", "<cmd>cprev<CR>", { desc = "Previous quickfix" })

-- Buffers
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- Split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Resize splits
map("n", "<A-Left>", "<cmd>vertical resize -2<CR>", { desc = "Resize split left" })
map("n", "<A-Right>", "<cmd>vertical resize +2<CR>", { desc = "Resize split right" })
map("n", "<A-Up>", "<cmd>resize -2<CR>", { desc = "Resize split up" })
map("n", "<A-Down>", "<cmd>resize +2<CR>", { desc = "Resize split down" })

-- In insert mode, type `;;` and it'll expand to: `${}` inside backticks
map("i", ";;", "`${}`<Left><Left>", { desc = "Insert template literal" })
