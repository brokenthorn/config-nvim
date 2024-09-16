return {
  -- the default colorscheme for LazyVim:
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = true,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = true,
  },

  -- Configure LazyVim to load preferred colorscheme:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
      style = "moon",
    },
  },
}
