return {
  -- Add colorschemes here:
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      -- transparent_mode = true,
      contrast = "hard", -- can be "hard", "soft", ""
    },
  },
  -- Configure LazyVim to load your preferred colorscheme:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
