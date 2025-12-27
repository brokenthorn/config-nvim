return {
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    opts = {
      auto = "macchiato",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = true,
      float = {
        transparent = true,
      },
      styles = {
        comments = {}, -- default is { "italic" }
        conditionals = {}, -- default is { "italic" }
      },
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
    priority = 1000,
    config = true,
    opts = {
      italic = {
        strings = true,
        emphasis = true,
        comments = false, -- default: true
        operators = false,
        folds = true,
      },
      contrast = "hard", -- can be "hard", "soft" or empty string
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
