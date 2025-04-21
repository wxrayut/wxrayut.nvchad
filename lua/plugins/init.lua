return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "vim", "lua", "vimdoc",
  --       "html", "css",
  --     },
  --   },
  -- },

  -- Live Server
  {
    "barrett-ruth/live-server.nvim",
    build = "npm i -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = true,
  },


  -- Discord Rich Presence (Windows only)
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
  },
}
