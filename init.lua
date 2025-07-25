vim.g.mapleader = " "

-- Remap leader key to space
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Open Mason" })
vim.keymap.set("n", "<leader>mi", ":MasonInstall", { desc = "Prefill MasonInstall" })
vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>")

vim.keymap.set("n", "<M-d>", ":Lspsaga term_toggle<CR>")
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

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true

require("config.lazy")

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

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

require("Comment").setup()
require("config.indent")
