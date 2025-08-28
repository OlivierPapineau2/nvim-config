return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			
			-- C/C++ LSP setup
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			
			-- TypeScript/JavaScript LSP setup
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
				single_file_support = true,
			})
			
			-- Deno LSP setup (only for Deno projects)
			lspconfig.denols.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
				single_file_support = true,
				-- Completely disable autostart - we'll handle it manually
				autostart = false,
			})
			
			-- Manual autostart for denols only in Deno projects
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
				callback = function(args)
					local bufnr = args.buf
					local filename = vim.api.nvim_buf_get_name(bufnr)
					
					-- Check if this is a Deno project
					local deno_root = lspconfig.util.root_pattern("deno.json", "deno.jsonc")(filename)
					if deno_root then
						-- Only start denols if it's not already running
						local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
						local denols_running = false
						for _, client in ipairs(clients) do
							if client.name == "denols" then
								denols_running = true
								break
							end
						end
						
						if not denols_running then
							lspconfig.denols.launch(bufnr)
						end
					end
				end,
			})
		end,
	},
}
