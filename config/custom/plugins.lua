local plugins = {
  {
    "MunifTanjim/prettier.nvim",
    dependencies = "fsouza/prettierd",
  },
  {
    "nvimtools/none-ls.nvim",
    -- ft = {'python'},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
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
return plugins
