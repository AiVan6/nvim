return {
	"saghen/blink.cmp",
	config = function()
		require("blink.cmp").setup({
			keymap = {
				preset = "default",
				["<C-j>"] = { "select_next", "fallback" },
				["<C-k>"] = { "select_prev", "fallback" },
				["<Tab>"] = { "accept", "fallback" },
			},
		})
	end,
}
