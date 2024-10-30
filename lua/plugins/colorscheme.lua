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
      style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day` (plus moon)
      light_style = "moon", -- The theme is used when the background is set to light
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = false },
        -- Background styles. Can be "dark", "transparent" or "normal":
        -- sidebars = "normal", -- I prefer NerdTree to not stand out
      },
      day_brightness = 1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      -- dim_inactive = false, -- dims inactive windows
    },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha, auto
      background = { -- :h background
        light = "macchiato",
        dark = "mocha",
      },
      -- color_overrides = {
      --   mocha = {
      --     base = "#000000",
      --     mantle = "#000000",
      --     crust = "#000000",
      --   },
      -- },
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
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
        strings = true,
        emphasis = true,
        comments = true,
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
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight" },
    -- opts = { colorscheme = "catppuccin" },
  },
}
