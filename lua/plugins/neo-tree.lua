require("neo-tree").setup({
	filesystem = {
		bind_to_cwd = false,
		follow_current_file = {
			enabled = true,
			leave_dirs_open = true,
		},
	},
})
