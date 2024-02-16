return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- Must set up packages is the order: Mason -> mason-lspconfig.
        -- Note: this must be run before lspconfig is used to configure
        -- each language server.
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                }
            }
        })

        require("mason-lspconfig").setup({
            ensure_installed = { "rust_analyzer",
				"pyright",
				"jedi_language_server",
				"lua_ls",
                "clangd",
                "cmake",
            }
        })

    end,
}
