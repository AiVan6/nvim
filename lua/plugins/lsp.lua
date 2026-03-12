return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "intelephense", "ts_ls" },
      })

      vim.lsp.config("intelephense", {})
      vim.lsp.enable("intelephense")
    end,
  }
 
}

