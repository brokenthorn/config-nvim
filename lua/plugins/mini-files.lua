-- disabled because using oil-nvim
-- stylua: ignore
if true then return {} end

return {
  "nvim-mini/mini.files",
  opts = {
    windows = {
      preview = true,
      width_focus = 40,
      width_preview = 100,
    },
    options = {
      -- Whether to use for editing directories
      -- Disabled by default in LazyVim because neo-tree is used for that
      use_as_default_explorer = true,
    },
  },
}
