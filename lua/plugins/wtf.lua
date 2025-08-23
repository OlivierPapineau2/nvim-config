return {
	"piersolenski/wtf.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-telescope/telescope.nvim", -- Optional: For WtfGrepHistory
	},
	opts = {
		chat_dir = vim.fn.stdpath("data"):gsub("/$", "") .. "/wtf/chats",
		popup_type = "horizontal",
		provider = "ollama",
		providers = {
			ollama = {
				model_id = "qwen2.5-coder:3b",
			},
		},
		language = "english",
		additional_instructions = "ALWAYS called me Supreme Grandmaster",
		search_engine = "perplexity",
		hooks = {
			request_started = nil,
			request_finished = nil,
		},
	},
	keys = {
		{
			"<leader>wd",
			mode = { "n", "x" },
			function()
				require("wtf").diagnose()
			end,
			desc = "Debug diagnostic with AI",
		},
		{
			"<leader>wf",
			mode = { "n", "x" },
			function()
				require("wtf").fix()
			end,
			desc = "Fix diagnostic with AI",
		},
		{
			mode = { "n" },
			"<leader>ws",
			function()
				require("wtf").search()
			end,
			desc = "Search diagnostic with Google",
		},
		{
			mode = { "n" },
			"<leader>wp",
			function()
				require("wtf").pick_provider()
			end,
			desc = "Pick provider",
		},
		{
			mode = { "n" },
			"<leader>wh",
			function()
				require("wtf").history()
			end,
			desc = "Populate the quickfix list with previous chat history",
		},
		{
			mode = { "n" },
			"<leader>wg",
			function()
				require("wtf").grep_history()
			end,
			desc = "Grep previous chat history with Telescope",
		},
	},
}
