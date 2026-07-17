vim.pack.add({
	"https://github.com/ray-x/go.nvim",
	"https://github.com/ray-x/guihua.lua",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/windwp/nvim-autopairs",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "gomod" },
	callback = function()
		require("go").setup({})
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimports()
	end,
})


--return {
--	{
--		"ray-x/go.nvim",
--		dependencies = { -- optional packages
--			"ray-x/guihua.lua",
--			"neovim/nvim-lspconfig",
--			"nvim-treesitter/nvim-treesitter",
--			"windwp/nvim-autopairs",
--		},
--		opts = function()
--			require("go").setup(opts)
--			local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
--			vim.api.nvim_create_autocmd("BufWritePre", {
--				pattern = "*.go",
--				callback = function()
--					require("go.format").goimports()
--				end,
--				group = format_sync_grp,
--			})
--			return {
--				-- lsp_keymaps = false,
--				-- other options
--			}
--		end,
--		event = { "CmdlineEnter" },
--		ft = { "go", "gomod" },
--		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
--	},
--}
