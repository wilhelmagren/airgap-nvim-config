local on_attach = function(_, _)
    vim.keymap.set('n', 'D', vim.lsp.buf_hover, {})
    vim.keymap.set('n', 'S', require('telescope.builtin').lsp_references, {})
end

local capabilities = require('cmp-nvim-lsp').default_capabilities()

require('lspconfig').lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require('lspconfig').ruff.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require('lspconfig').rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
