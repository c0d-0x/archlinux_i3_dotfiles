return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup {
      themes = { "noctishc", "falcon", "tokyodark", "catppuccin", "cyberdream", "aura-dark", "kanagawa", "yorumi" }, -- Your list of installed colorschemes.
      livePreview = true, -- Apply theme while picking. Default to true.

      vim.keymap.set("n", "<leader>tt", ":Themery<CR>", { noremap = true }),
    }
  end,
}
