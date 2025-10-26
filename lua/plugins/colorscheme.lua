return {
  -- Add colorschemes here:
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      -- dim_inactive = true,
      transparent_mode = true,
      contrast = "", -- can be "hard", "soft", ""
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
