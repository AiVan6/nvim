--local fzf = require("fzf-lua")

--vim.keymap.set("n", "<leader><leader>", fzf.files)
--vim.keymap.set("n", "<leader>/", fzf.live_grep)

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>e", "<Cmd>Explore<CR>")
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
--map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
--map("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", opts)
map("n", "<leader>cm", ":Mason<CR>", opts)
map("n", "<leader>cl", ":Lazy<CR>", opts)


