-- Debug script for completion issues
local M = {}

function M.check_completion_status()
    print("=== Completion Debug Report ===")
    
    -- Check CMP status
    local cmp_status, cmp = pcall(require, "cmp")
    if cmp_status then
        print("✅ CMP is loaded")
        print("   Sources:", vim.inspect(cmp.get_sources()))
    else
        print("❌ CMP failed to load:", cmp)
    end
    
    -- Check autopairs status
    local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
    if autopairs_status then
        print("✅ nvim-autopairs is loaded")
    else
        print("❌ nvim-autopairs failed to load:", autopairs)
    end
    
    -- Check LSP status
    local lsp_status, lspconfig = pcall(require, "lspconfig")
    if lsp_status then
        print("✅ lspconfig is loaded")
        
        -- Check active LSP clients
        local clients = vim.lsp.get_active_clients()
        if #clients > 0 then
            print("   Active LSP clients:")
            for _, client in ipairs(clients) do
                print("   - " .. client.name .. " (buf: " .. client.bufnr .. ")")
            end
        else
            print("   ⚠️ No active LSP clients")
        end
    else
        print("❌ lspconfig failed to load:", lspconfig)
    end
    
    -- Check if cmp_nvim_lsp is available
    local cmp_lsp_status, cmp_lsp = pcall(require, "cmp_nvim_lsp")
    if cmp_lsp_status then
        print("✅ cmp_nvim_lsp is loaded")
    else
        print("❌ cmp_nvim_lsp failed to load:", cmp_lsp)
    end
    
    print("=== End Debug Report ===")
end

function M.restart_lsp()
    print("=== Restarting LSP Servers ===")
    
    -- Stop all active LSP clients
    local clients = vim.lsp.get_active_clients()
    for _, client in ipairs(clients) do
        print("Stopping client:", client.name)
        client.stop()
    end
    
    -- Clear LSP diagnostics
    vim.diagnostic.reset()
    
    print("LSP servers stopped. Please restart Neovim or open a new file to restart LSP.")
end

function M.check_current_lsp()
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
    
    print("=== Current Buffer LSP Status ===")
    print("Buffer:", vim.api.nvim_buf_get_name(bufnr))
    print("Filetype:", vim.api.nvim_buf_get_option(bufnr, 'filetype'))
    
    if #clients > 0 then
        print("Active LSP clients for this buffer:")
        for _, client in ipairs(clients) do
            print("  - " .. client.name)
        end
    else
        print("No LSP clients active for this buffer")
    end
end

-- Create commands to run the debug checks
vim.api.nvim_create_user_command("DebugCompletion", function()
    M.check_completion_status()
end, {})

vim.api.nvim_create_user_command("RestartLSP", function()
    M.restart_lsp()
end, {})

vim.api.nvim_create_user_command("CheckLSP", function()
    M.check_current_lsp()
end, {})

return M
