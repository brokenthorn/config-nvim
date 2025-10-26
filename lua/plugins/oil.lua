-- disabled because using mini.files at the moment which is similar and looks nicer
-- stylua: ignore
if true then return {} end

return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require("oil").setup({
        keymaps = {
          -- Override some default keymaps:
          ["S"] = { "actions.select", opts = { vertical = true }, mode = "n" },
          ["s"] = { "actions.select", opts = { horizontal = true }, mode = "n" },
          ["t"] = { "actions.select", opts = { tab = true }, mode = "n" },
          ["p"] = "actions.preview",
          ["q"] = { "actions.close", mode = "n" },
          -- Navigation:
          ["<CR>"] = "actions.select",
          ["<C-l>"] = "actions.select",
          ["<C-h>"] = { "actions.parent", mode = "n" },
          -- Other:
          ["<C-r>"] = "actions.refresh",
          ["_"] = { "actions.open_cwd", mode = "n" },
          ["`"] = { "actions.cd", mode = "n" },
          ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
          ["g?"] = { "actions.show_help", mode = "n" },
          ["gs"] = { "actions.change_sort", mode = "n" },
          ["gx"] = "actions.open_external",
          ["g."] = { "actions.toggle_hidden", mode = "n" },
          ["g\\"] = { "actions.toggle_trash", mode = "n" },
          -- Default keymaps, don't need to specify, but listing here for reference:
          -- ["g?"] = { "actions.show_help", mode = "n" },
          -- ["<CR>"] = "actions.select",
          -- ["<C-s>"] = { "actions.select", opts = { vertical = true } },
          -- ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
          -- ["<C-t>"] = { "actions.select", opts = { tab = true } },
          -- ["<C-p>"] = "actions.preview",
          -- ["<C-c>"] = { "actions.close", mode = "n" },
          -- ["<C-l>"] = "actions.refresh",
          -- ["-"] = { "actions.parent", mode = "n" },
          -- ["_"] = { "actions.open_cwd", mode = "n" },
          -- ["`"] = { "actions.cd", mode = "n" },
          -- ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
          -- ["gs"] = { "actions.change_sort", mode = "n" },
          -- ["gx"] = "actions.open_external",
          -- ["g."] = { "actions.toggle_hidden", mode = "n" },
          -- ["g\\"] = { "actions.toggle_trash", mode = "n" },
        },
        view_options = {
          show_hidden = true,
          is_hidden_file = function(name, bufnr)
            local hidden_files = { ".DS_STORE" }
            for _, value in ipairs(hidden_files) do
              if vim.startswith(name, value) then
                return true
              end
            end
            return false
            -- Other ways to match:
            -- local m = name:match("^%.")
            -- return m ~= nil
          end,
        },

        -- Id is automatically added at the beginning, and name at the end.
        -- See :help oil-columns
        -- columns = {
        --   "icon",
        --   -- "permissions",
        --   -- "size",
        --   -- "mtime",
        -- },

        lsp_file_methods = {
          -- Enable or disable LSP file operations
          enabled = true,
          -- Time to wait for LSP file operations to complete before skipping
          timeout_ms = 2500,
          -- Set to true to autosave buffers that are updated with LSP willRenameFiles
          -- Set to "unmodified" to only save unmodified buffers
          autosave_changes = true,
        },

        float = {
          padding = 4,
        },
      })

      local keymap = vim.keymap
      keymap.set("n", "<leader>o", function()
        require("oil").open_float()
      end, { desc = "Open oil" })
    end,
  },
}
