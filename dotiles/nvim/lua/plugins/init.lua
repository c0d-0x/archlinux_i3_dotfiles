return {
  -- {
  --   "stevearc/conform.nvim",
  --   -- event = 'BufWritePre', -- uncomment for format on save
  --   config = function()
  --     require "configs.conform"
  --   end,
  -- },
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
    "brenton-leighton/multiple-cursors.nvim",
    version = "*",  -- Use the latest tagged version
    opts = {},  -- This causes the plugin setup function to be called
    keys = {
      {"<M-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}, desc = "Add cursor and move down"},
      {"<M-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "x"}, desc = "Add cursor and move up"},

      {"<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}, desc = "Add cursors to cword"},
      {"<Leader>A", "<Cmd>MultipleCursorsAddMatchesV<CR>", mode = {"n", "x"}, desc = "Add cursors to cword in previous area"},

      {"<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Add cursor and jump to next cword"},
      {"<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Jump to next cword"},

      {"<Leader>l", "<Cmd>MultipleCursorsLock<CR>", mode = {"n", "x"}, desc = "Lock virtual cursors"},
    },
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
		--     		keys = {
		-- 	vim.keymap.set("n", "]t", function()
		-- 		require("todo-comments").jump_next()
		-- 	end, { desc = "Next todo comment" }),
		--
		-- 	vim.keymap.set("n", "[t", function()
		-- 		require("todo-comments").jump_prev()
		-- 	end, { desc = "Previous todo comment" }),
		--
		-- 	-- You can also specify a list of valid jump keywords
		--
		-- 	vim.keymap.set("n", "]t", function()
		-- 		require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
		-- 	end, { desc = "Next error/warning todo comment" }),
		--
		-- }

    },
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
