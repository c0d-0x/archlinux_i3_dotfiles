---@type ChadrcConfig
local M = {}
--
M.ui = {

  -- hl_add = {},
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  theme = "chadracula-evondev",
  -- hl_override = {},
  -- changed_themes = { },
  theme_toggle = { "chadracula-evondev", "tokyonight" },
  transparency = true,
  lsp_semantic_tokens = true,
  nvdash = {
    load_on_startup = true,
    header = {
      " ██████╗ ██████╗ ██████╗          ██████╗ ██╗  ██╗",
      "██╔════╝██╔═████╗██╔══██╗        ██╔═══██╗╚██╗██╔╝",
      "██║     ██║██╔██║██║  ██║        ██║   ██║ ╚███╔╝ ",
      "██║     ████╔╝██║██║  ██║        ██║   ██║ ██╔██╗ ",
      "╚██████╗╚██████╔╝██████╔╝███████╗╚██████╔╝██╔╝ ██╗",
      " ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return M
