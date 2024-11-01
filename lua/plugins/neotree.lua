return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = { position = "left" },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = { ".git" },
        always_show = { ".env" },
      },
    },
  },
}
