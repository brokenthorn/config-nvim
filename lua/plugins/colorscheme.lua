return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },

  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = true,
  --   -- opts = ...
  -- },

  -- Configure LazyVim to load preferred colorscheme:
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight" },
  },
}
