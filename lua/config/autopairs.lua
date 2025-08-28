local npairs = require("nvim-autopairs")
npairs.setup({
    check_ts = true,
    fast_wrap = {},
    disable_filetype = { "TelescopePrompt", "vim" },
})

-- More robust CMP integration
local function setup_cmp_integration()
    local cmp_status, cmp = pcall(require, "cmp")
    if cmp_status then
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
end

-- Try to setup immediately, and also on VimEnter to handle timing issues
setup_cmp_integration()

vim.api.nvim_create_autocmd("User", {
    pattern = "LazyDone",
    callback = function()
        -- Small delay to ensure CMP is fully loaded
        vim.defer_fn(setup_cmp_integration, 100)
    end,
})
