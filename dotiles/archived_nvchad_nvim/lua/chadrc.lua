-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  hl_override = {
    Comment = { italic = true },
    ["@Comment"] = { italic = true },
    BufferLine = {
      bg = "none",
    },
    BufferLineBackground = {
      bg = "none",
    },
    BufferLineSeparator = {
      bg = "none",
    },
  },
  theme = "gruvbox",
  -- changed_themes = { },
  theme_toggle = { "falcon", "gruvbox" },
  transparency = true,
  lsp_semantic_tokens = true,
}
M.lsp = { signature = true }
M.nvdash = {
  load_on_startup = true,
  header = {
    " ██████╗ ██████╗ ██████╗          ██████╗ ██╗  ██╗",
    "██╔════╝██╔═████╗██╔══██╗        ██╔═══██╗╚██╗██╔╝",
    "██║     ██║██╔██║██║  ██║        ██║   ██║ ╚███╔╝ ",
    "██║     ████╔╝██║██║  ██║        ██║   ██║ ██╔██╗ ",
    "╚██████╗╚██████╔╝██████╔╝███████╗╚██████╔╝██╔╝ ██╗",
    " ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝",
    "                                                  ",
  },
}

return M
