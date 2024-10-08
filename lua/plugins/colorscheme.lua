return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      style = "night", -- night, storm, day, moon
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        -- functions = {},
        -- variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        -- sidebars = "dark", -- style for sidebars, see below
        -- floats = "dark", -- style for floating windows
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight" },
  },
}
