return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown", "codecompanion" },
	opts = {
		-- File types to enable the plugin for
		file_types = { "markdown", "codecompanion" },
		-- Render markdown in normal mode
		render_modes = { "n", "c", "i" },
		-- Enable anti-conceal to show raw markdown when cursor is on the line
		anti_conceal = {
			enabled = true,
		},
		-- Code block configuration
		code = {
			-- Show language and copy button
			sign = true,
			width = "block",
			right_pad = 2,
		},
		-- Heading configuration
		heading = {
			-- Enable heading icons
			sign = true,
			icons = { "󰬺 ", "󰬻 ", "󰬼 ", "󰬽 ", "󰬾 ", "󰬿 " },
		},
		-- List configuration
		bullet = {
			icons = { "●", "○", "◆", "◇" },
		},
		-- Checkbox configuration
		checkbox = {
			unchecked = {
				icon = "󰄱 ",
			},
			checked = {
				icon = "󰱒 ",
			},
		},
		-- Quote configuration
		quote = {
			icon = "▋",
		},
		-- Link configuration
		link = {
			enabled = true,
		},
		-- Table configuration
		pipe_table = {
			style = "normal",
		},
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
