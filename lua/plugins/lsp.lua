return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			--lspconfig.tsserver.setup({
			--	capabilities = capabilities,
			--})
			lspconfig.denols.setup({
				capabilities = capabilities,
			})
		end,
	},
}
