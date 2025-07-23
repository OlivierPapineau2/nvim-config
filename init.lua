vim.g.mapleader = " "

-- Remap leader key to space
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')


vim.opt.termguicolors = true

require("config.lazy")

vim.keymap.set("n", "<leader>f", function()
  require("user.lsp_format").format()
end, { desc = "Format with current LSP" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('Comment').setup()
require('config.indent')
