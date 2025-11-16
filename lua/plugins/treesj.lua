return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  -- Return a new keymap to replace the entire default keymap of the plugin
  -- instead of patching it:
  keys = {
    {
      "<space>m",
      function()
        require("treesj").toggle()
      end,
      desc = "Toggle tree split",
    },
  },

  opts = {
    use_default_keymaps = false,
    check_syntax_error = true,
    max_join_length = 120,

    ---Cursor behavior:
    ---hold - cursor follows the node/place on which it was called
    ---start - cursor jumps to the first symbol of the node being formatted
    ---end - cursor jumps to the last symbol of the node being formatted
    ---@type 'hold'|'start'|'end'
    cursor_behavior = "hold",

    ---@type boolean Notify about possible problems or not
    notify = true,

    ---@type boolean Use `dot` for repeat action
    dot_repeat = false,

    ---@type nil|function Callback for treesj error handler. func (err_text, level, ...other_text)
    -- on_error = nil,

    ---@type table Presets for languages
    -- langs = {}, -- See the default presets in lua/treesj/langs
  },
}
