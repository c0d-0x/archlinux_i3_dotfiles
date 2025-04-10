require "nvchad.options"

-- add yours here!

vim.o.cursorlineopt = "both" -- to enable cursorline!
vim.o.hlsearch = false -- Set highlight on search
vim.wo.number = true -- Make line numbers default
vim.o.mouse = "a" -- Enable mouse mode
vim.o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim.
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true -- smart case
vim.wo.signcolumn = "yes" -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.termguicolors = true -- set termguicolors to enable highlight groups
vim.o.relativenumber = true -- set relative numbered lines
vim.o.cursorline = false -- highlight the current line
vim.o.backspace = "indent,eol,start" -- allow backspace on
vim.o.pumheight = 10 -- pop up menu height
vim.o.fileencoding = "utf-8" -- the encoding written to a file
vim.o.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.o.autoindent = true -- copy indent from current line when starting new one
vim.opt.iskeyword:append "-" -- hyphenated words recognized by searches
vim.o.linebreak = true -- companion to wrap don't split words
