-- lua/config/indent.lua

-- Global defaults: use spaces, 4 spaces per indent
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Per-language indentation settings
local indent_settings = {
  -- 2 spaces for JS/TS
  ["javascript"] = { shiftwidth = 2, tabstop = 2, softtabstop = 2, expandtab = true },
  ["typescript"] = { shiftwidth = 2, tabstop = 2, softtabstop = 2, expandtab = true },
  ["json"] = { shiftwidth = 2, tabstop = 2, softtabstop = 2, expandtab = true },
  ["css"] = { shiftwidth = 2, tabstop = 2, softtabstop = 2, expandtab = true },
  ["html"] = { shiftwidth = 2, tabstop = 2, softtabstop = 2, expandtab = true },
  -- 4 spaces for Python
  ["python"] = { shiftwidth = 4, tabstop = 4, softtabstop = 4, expandtab = true },
  -- Tabs for Go (Go convention)
  ["go"] = { shiftwidth = 4, tabstop = 4, softtabstop = 4, expandtab = false },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    local opts = indent_settings[ft]
    if opts then
      vim.opt_local.shiftwidth = opts.shiftwidth
      vim.opt_local.tabstop = opts.tabstop
      vim.opt_local.softtabstop = opts.softtabstop
      vim.opt_local.expandtab = opts.expandtab
    end
  end,
})

