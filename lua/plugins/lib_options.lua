-- Mason
require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "intelephense",
    "ts_ls",
  },
})

vim.lsp.config("intelephense", {})
vim.lsp.enable("intelephense")

 -- none-ls
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- scrollbar
require("scrollbar").setup()
require("scrollbar.handlers.search").setup()
