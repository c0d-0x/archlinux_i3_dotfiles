local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
local configs = require "lspconfig"
local lspconfig = require "lspconfig"
local prettier = require "prettier"

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  on_init = on_init,
  command = { "rust-analyzer" },
  filetypes = { "rust" },
}

lspconfig.gopls.setup {
  settings = {
    gopls = {
      gofumpt = true,
    },
  },
}

lspconfig.bashls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  command = { "bash-language-server", "start" },
  provideFormatter = true,
  filetypes = { "sh" },
  setting = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)",
    },
  },
}

lspconfig.asm_lsp.setup {
  command = "asm-lsp",
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "asm", "s", "S", "ASM" },
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetype = { "css", "scss", "less" },
  provideFormatter = true,
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetype = { "python" },
}

lspconfig.clangd.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "c", "cpp" },
  initialization_options = {
    fallback_flags = { "-std=c17" },
  },
  provideFormatter = true,
}

lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetype = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "html",
  },
  embeddedLanguages = {
    html = true,
  },
  provideFormatter = true,
}

lspconfig.html.setup {
  on_attach = function()
    capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
  end,
  on_init = on_init,
  capabilities = capabilities,
  filetype = { "html", "css", "javascript" },
  embeddedLanguages = {
    css = true,
    javascript = true,
  },
}

lspconfig.sqlls.setup {
  filetype = { "sql", "mysql" },
}
prettier.setup(require "configs.prettierconfig")
