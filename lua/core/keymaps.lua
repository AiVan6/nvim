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
map("n", "<leader>gf", ":!gofumpt -w %<CR>", opts)
map("n", "<leader>kk", ":Neotree toggle<CR>", opts)
map("n", "<leader>k", ":Neotree focus<CR>", opts)

map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

--map("v", "<leader>cl", ":'<,'>norm i--<CR>", opts)
map("n", "<leader>cp", ":'<,'>norm i#<CR>", opts)
map("n", "<leader>cg", ":'<,'>norm i//<CR>", opts)

map("v", "<leader>cl", ":'<,'>norm i--<CR>", opts)
map("v", "<leader>cp", ":'<,'>norm i#<CR>", opts)
map("v", "<leader>cg", ":'<,'>norm i//<CR>", opts)
map("v", "<leader>ucp", ":'<,'>s/^\\s*\\/\\/\\s*//<CR>", opts)
map("v", "<leader>ucp", ":'<,'>s/^\\s*#\\s*//<CR>", opts)

map("x", "<leader>ucp", [[:s/^\s*#\s*//<CR>]], opts)
