--blink
vim.pack.add({
  {
    src = "https://github.com/saghen/blink.lib",
  },
  {
    src = "https://github.com/saghen/blink.cmp",
    build = function()
      require("blink.cmp").build():wait()
    end,
  },
})

require("blink.cmp").setup({
    fuzzy = { implementation = "lua" },
	keymap = {
		preset = "default",

		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },
		["<Tab>"] = { "accept", "fallback" },
	},
})
