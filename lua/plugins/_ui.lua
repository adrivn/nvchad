return {
  -- highlight undo
  {
    "tzachar/highlight-undo.nvim",
    opts = {},
  },
  -- better escape from insert mode using j & k
  {
    "max397574/better-escape.nvim",
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
}
