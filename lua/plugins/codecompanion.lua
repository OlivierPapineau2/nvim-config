return {
	"olimorris/codecompanion.nvim",
	opts = {
		-- Global options
		log_level = "DEBUG",

		-- Extensions configuration
		extensions = {
			mcphub = {
				callback = "mcphub.extensions.codecompanion",
				opts = {
					make_vars = true,
					make_slash_commands = true,
					show_result_in_chat = true,
				},
			},
		},

		-- Strategy configurations
		strategies = {
			chat = {
				adapter = "ollama",
				slash_commands = {
					["file"] = {
						callback = "strategies.chat.slash_commands.file",
						description = "Select a file using Telescope",
						opts = {
							provider = "telescope",
							contains_code = true,
						},
					},
				},
				opts = {
					completion_provider = "cmp",
					goto_file_action = "tabnew",
				},
			},
			inline = {
				adapter = "ollama",
				keymaps = {
					accept_change = {
						modes = { n = "<leader>ga" },
						description = "Accept the suggested change",
					},
					reject_change = {
						modes = { n = "<leader>gr" },
						opts = { nowait = true },
						description = "Reject the suggested change",
					},
				},
			},
			cmd = {
				adapter = "ollama",
			},
		},

		-- Display configuration
		display = {
			action_palette = {
				width = 95,
				height = 10,
				prompt = "Prompt ",
				provider = "telescope",
				opts = {
					show_default_actions = true,
					show_default_prompt_library = true,
					title = "CodeCompanion actions",
				},
			},
			chat = {
				icons = {
					chat_context = "📎️",
				},
				fold_context = true,
				show_settings = true,
				show_context = true,
				show_header_separator = false, -- Disable to prevent conflicts with render-markdown
				separator = "─",
				show_references = true,
				show_token_count = true,
				start_in_insert_mode = false,
				window = {
					position = "right",
					width = 80,
					height = 20,
				},
			},
			inline = {
				layout = "vertical",
			},
		},

		-- Adapter configurations
		adapters = {
			opts = {
				show_defaults = false,
			},
			anthropic = function()
				return require("codecompanion.adapters").extend("anthropic", {
					schema = {
						extended_thinking = {
							default = true,
						},
					},
				})
			end,
			openai = function()
				return require("codecompanion.adapters").extend("openai", {
					opts = {
						stream = true,
					},
					schema = {
						model = {
							default = function()
								return "o4-mini"
							end,
						},
					},
				})
			end,
			ollama = function()
				return require("codecompanion.adapters").extend("ollama", {
					schema = {
						model = {
							default = "qwen2.5-coder-extended",
						},
						num_ctx = {
							default = 20000,
						},
						think = {
							default = false,
						},
					},
				})
			end,
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"ravitemer/mcphub.nvim",
	},
}
