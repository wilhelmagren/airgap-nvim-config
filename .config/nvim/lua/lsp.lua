-- Register 'D' and 'S' keymaps in normal mode for
-- checking out documentation and find usage.
local on_attach = function(_, _)
    vim.keymap.set('n', 'D', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'S', require('telescope.builtin').lsp_references, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Lua.
require('lspconfig').lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemtry = {
                enable = false,
            },
        },
    },
})

-- Python.
require('lspconfig').ruff.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { 'ruff', 'server' },
})

-- Rust.
require('lspconfig').rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
