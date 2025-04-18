return {
  bin = "prettier", -- or 'prettierd' (v0.23.3+)
  filetypes = {
    "css",
    "sql",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
    "toml",
  },
  cli_options = {
    arrow_parens = "always",
    bracket_spacing = true,
    bracket_same_line = false,
    embedded_language_formatting = "auto",
    end_of_line = "lf",
    html_whitespace_sensitivity = "css",
    jsx_bracket_same_line = false,
    jsx_single_quote = true,
    print_width = 120,
    prose_wrap = "preserve",
    quote_props = "as-needed",
    semi = true,
    single_attribute_per_line = false,
    single_quote = true,
    tab_width = 2,
    trailing_comma = "es5",
    use_tabs = false,
    vue_indent_script_and_style = false,
  },
  on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
      vim.cmd "nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>"

      -- format on save
      vim.cmd "autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()"
    end

    if client.resolved_capabilities.document_range_formatting then
      vim.cmd "xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>"
    end
  end,
}
