return {
    { "mfussenegger/nvim-jdtls" },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            { "antosha417/nvim-lsp-file-operations", config = true },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.eslint.setup({ capabilities = capabilities }) -- Linting
            lspconfig.html.setup({ capabilities = capabilities }) -- HTML support
            lspconfig.cssls.setup({ capabilities = capabilities }) -- CSS support
            lspconfig.tailwindcss.setup({ capabilities = capabilities }) -- Tailwind support
            lspconfig.jsonls.setup({ capabilities = capabilities }) -- JSON support
            lspconfig.emmet_ls.setup({ capabilities = capabilities }) -- HTML/JSX shortcuts

            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                        },
                        checkOnSave = {
                            command = "clippy",
                        },
                        diagnostics = {
                            enable = true,
                        },
                    },
                },
            })

            lspconfig.lemminx.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.ast_grep.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
            })

            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
