return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    {
        "MunifTanjim/prettier.nvim",
        dependencies = "fsouza/prettierd",
    },
    {
        "nvimtools/none-ls.nvim",
        opts = function()
            return require "configs.null-ls"
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "shfmt",
                "clangd",
                "stylua",
                "checkmake",
                "codespell",
                "clang-format",
                "black",
                "html-lsp",
                "css-lsp",
                "typescript-language-server",
                "prettier",
                "pyright",
                "mypy",
                "rust-analyzer",
                "asm-lsp",
                "asmfmt",
            },
        },
    },
}
