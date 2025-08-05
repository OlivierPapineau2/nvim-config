return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
				single_file_support = false,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			--lspconfig.tsserver.setup({
			--	capabilities = capabilities,
			--})
			lspconfig.denols.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
				single_file_support = false,
			})
		end,
	},
}
