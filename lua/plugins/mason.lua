return{
    "williamboman/mason.nvim",
    dependencies={
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
    local mason = require("mason")
            mason.setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "◍",
                        package_uninstalled = "×",
                    },
                }
            })
        require("mason-lspconfig").setup {
            ensure_installed = {
            "lua_ls",
            "rust_analyzer",
            "emmet_ls",
            "html",
            "ts_ls",
            "cssls",
            "tailwindcss",
        },
        automatic_installation=true,
        }
    end
}

