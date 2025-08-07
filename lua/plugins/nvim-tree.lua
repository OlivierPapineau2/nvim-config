return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			renderer = {
				icons = {
					show = {
						folder = true,
						folder_arrow = true,
					},
					glyphs = {
						folder = {
							default = "",
							open = "",
						},
					},
				},
			},
		})
	end,
}
