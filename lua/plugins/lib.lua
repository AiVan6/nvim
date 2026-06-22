-- Mason bin в PATH
vim.pack.add({
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		version = vim.version.range("3"),
	},
	-- dependencies
    "https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
})

-- LSP
vim.pack.add({
      "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig"
  })

-- Formatting

vim.pack.add({
  "https://github.com/nvimtools/none-ls.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
})

-- Telescope
vim.pack.add({
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
})

-- YAML
vim.pack.add({
  "https://tangled.org/cuducos.me/yaml.nvim",
  "https://github.com/folke/snacks.nvim",
  "https://github.com/ibhagwan/fzf-lua",
})

-- Scrollbar
vim.pack.add({
  "https://github.com/petertriho/nvim-scrollbar",
  "https://github.com/kevinhwang91/nvim-hlslens",
})

