-- Mason bin в PATH

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
	},

	-- Lua formatter
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
				},
			})

			-- автоформат lua при сохранении
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.lua",
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end,
	},
	--neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
	},

	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},
	{
		"https://tangled.org/cuducos.me/yaml.nvim",
		ft = { "yaml" }, -- optional
		dependencies = {
			"folke/snacks.nvim", -- optional
			"nvim-telescope/telescope.nvim", -- optional
			"ibhagwan/fzf-lua", -- optional
		},
	},
	{
		"petertriho/nvim-scrollbar",
		dependencies = {
			"kevinhwang91/nvim-hlslens", -- для подсветки поиска
		},
		config = function()
			require("scrollbar").setup()
			require("scrollbar.handlers.search").setup()
		end,
	},
}
