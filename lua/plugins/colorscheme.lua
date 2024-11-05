return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    name = "tokyonight",
    priority = 1000,
    ---@class tokyonight.Config
    ---@field on_colors fun(colors: ColorScheme)
    ---@field on_highlights fun(highlights: tokyonight.Highlights, colors: ColorScheme)
    opts = {
      style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day` (plus moon)
      light_style = "moon", -- The theme is used when the background is set to light
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        -- Background styles. Can be "dark", "transparent" or "normal":
        -- sidebars = "normal", -- I prefer NerdTree to not stand out
      },
      -- day_brightness = 0.5, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      -- dim_inactive = false, -- dims inactive windows
    },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "auto", -- latte, frappe, macchiato, mocha, auto
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the bg color.
      -- styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
      --   comments = { "italic" }, -- Change the style of comments
      --   conditionals = { "italic" },
      --   loops = {},
      --   functions = {},
      --   keywords = {},
      --   strings = {},
      --   variables = {},
      --   numbers = {},
      --   booleans = {},
      --   properties = {},
      --   types = {},
      --   operators = {},
      --   -- miscs = {}, -- Uncomment to turn off hard-coded styles
      -- },
      -- no_italic = true, -- force no italics
      default_integrations = true,
      -- enable some integrations that are not enabled by default:
      integrations = {
        grug_far = true,
      },
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    name = "gruvbox",
    priority = 1000,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = true,
        comments = false,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      -- palette_overrides = {},
      -- overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
}
