local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities
local lspconfig = require "lspconfig"
local prettier = require "prettier"

lspconfig.rust_analyzer.setup {
  command = {"rust-analyzer"},
  filetypes = {"rust"},
}

lspconfig.bashls.setup {
  command = { "bash-language-server", "start" },
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
  capabilities = capabilities,
  filetypes = { "asm", "s", "S", "ASM" },
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "css", "scss", "less" },
  provideFormatter = true,
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "python" },
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  filetype = { "c", "cpp" },
  provideFormatter = true,
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
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
  capabilities = capabilities,
  filetype = { "html", "css", "javascript" },
  embeddedLanguages = {
    css = true,
    javascript = true,
  },
}
prettier.setup(require "custom.configs.prettierconfig")
