return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				astro = { "prettierd", "prettier", stop_after_first = true },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 200,
				lsp_format = "fallback",
			},
			--- count is an integer representing total count of errors
			--- level is a string "error" | "warning"
			--- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
			--- this should return a string
			--- Don't get too fancy as this function will be executed a lot
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
		})
	end,
}
