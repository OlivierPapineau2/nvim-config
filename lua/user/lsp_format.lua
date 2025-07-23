local M = {}

-- Format using the first attached LSP client that supports formatting
function M.format()
  local bufnr = vim.api.nvim_get_current_buf()
  local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
  for _, client in ipairs(clients) do
    if client.supports_method("textDocument/formatting") then
      vim.lsp.buf.format({
        bufnr = bufnr,
        filter = function(c)
          return c.id == client.id
        end,
      })
      return
    end
  end
  vim.notify("No attached LSP supports formatting", vim.log.levels.WARN)
end

return M

