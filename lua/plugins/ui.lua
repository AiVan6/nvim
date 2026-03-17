return {

	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		config = function()
			vim.cmd("colorscheme github_dark_tritanopia")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = function()
			require("lualine").setup({})
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		lazy = true,
		event = "BufRead",
		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			require("notify")
		end,
	},
}
