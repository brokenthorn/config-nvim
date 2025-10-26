return {
  "nvim-mini/mini.files",
  opts = {
    windows = {
      preview = true,
      width_focus = 35,
      width_preview = 35,
    },
    options = {
      -- Whether to use for editing directories
      -- Disabled by default in LazyVim because neo-tree is used for that,
      -- but we don't want two file explorers so we're enabling this:
      use_as_default_explorer = true,
    },
  },
}
