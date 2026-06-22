vim.pack.add({
    "https://github.com/projekt0n/github-nvim-theme",
})

require("github-theme").setup()

vim.cmd.colorscheme("github_dark_colorblind")

vim.pack.add({
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/rcarriga/nvim-notify"

})

require("lualine").setup({})
require("gitsigns").setup()
vim.notify = require("notify")
