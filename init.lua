vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
-- Remap leader key to space
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>H", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>J", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>K", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>L", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "]b", ":bnext<CR>")
vim.keymap.set("n", "[b", ":bprev<CR>")

vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Open Mason" })
vim.keymap.set("n", "<leader>mi", ":MasonInstall", { desc = "Prefill MasonInstall" })
vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>")

vim.keymap.set("n", "<M-d>", ":Lspsaga term_toggle<CR>")
vim.keymap.set("n", "<A-d>", ":Lspsaga term_toggle<CR>")
vim.keymap.set("t", "<M-d>", ":Lspsaga term_toggle<CR>")

-- Jump to next/prev diagnostic
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next diagnostic" })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Prev diagnostic" })

-- Show diagnostics for cursor/line/buffer/workspace
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Cursor diagnostics" })
vim.keymap.set("n", "<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Line diagnostics" })
vim.keymap.set("n", "<leader>bd", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Buffer diagnostics" })
vim.keymap.set("n", "<leader>wd", "<cmd>Lspsaga show_workspace_diagnostics<CR>", { desc = "Workspace diagnostics" })
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action" })
vim.keymap.set("v", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action" })

vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.laststatus = 3
-- vim.o.fillchars = "vert:~,horiz:━"

--- START Formatting
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true })
end, { desc = "Format with current LSP" })
--- END Formatting

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.treesitter.start()
	end,
})

require("config.lazy")
require("config.indent")
