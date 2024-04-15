return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", opts = {} },
      {
        "williamboman/mason-lspconfig.nvim",
        opts = {
          automatic_installation = true,
          ensure_installed = {
            "basedpyright",
            "lua_ls",
            "html",
            "cssls",
            "gopls",
          },
        },
      },
      {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
          ensure_installed = {
            "stylua",
            "prettier",
            "goimports",
            "goimports-reviser",
            "gofumpt",
            "golines",
            "gomodifytags",
            "ruff",
          },
        },
      },
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "python",
        "sql",
        "bash",
        "markdown",
        "yaml",
      },
    },
  },
}
