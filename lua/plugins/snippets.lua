return {
  -- add pre-defined snippets for most languages:
  { "rafamadriz/friendly-snippets" },

  -- allows vscode style snippets to be used with native neovim snippets vim.snippet
  -- also comes with support for friendly-snippets
  {
    "garymjr/nvim-snippets",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
      friendly_snippets = true,
      create_cmp_source = true,
      extended_filetypes = {
        typescript = { "javascript" },
      },
      -- ignored_filetypes = string[],
      -- global_snippets = string{} defaults to {"all"} -- snippets to load for all files
      -- search_paths = string[] -- paths to search for snippets
    },
  },
}
