return {
	"nvim-tree/nvim-web-devicons",
	opts = {},
	config = function()
		require("nvim-web-devicons").setup({
			override = {
				["folder"] = {
					icon = "",
					color = "#FFD700",
					name = "Folder",
				},
				["folder-open"] = {
					icon = "",
					color = "#FFD700",
					name = "FolderOpen",
				},
			},
		})
	end,
}
