return {
  -- The recommended setup to use prettier with linters is to NOT integrate it
  -- with eslint. For this config, we have two extras, to enable eslint fix on
  -- save and enable the prettier formatter with null-ls.
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  -- Ability to add/delete/change surroundings
  { import = "lazyvim.plugins.extras.coding.mini-surround" },
  -- Annotation generator
  { import = "lazyvim.plugins.extras.coding.neogen" },

  -- File Explorer. Disabled because using oil.nvim atm.
  -- { import = "lazyvim.plugins.extras.editor.mini-files" },
  -- show current code context in statusbar
  { import = "lazyvim.plugins.extras.editor.navic" },

  -- TypeScript LSP with provisions for Deno's LSP
  { import = "lazyvim.plugins.extras.lang.typescript" },
  -- jsonls, schemastore packages, json, json5, jsonc
  { import = "lazyvim.plugins.extras.lang.json" },
  -- Markdown editing, rendering, previewing:
  { import = "lazyvim.plugins.extras.lang.markdown" },
  -- C#/F# and DotNet support:
  { import = "lazyvim.plugins.extras.lang.dotnet" },
  -- TOML file type support
  { import = "lazyvim.plugins.extras.lang.toml" },

  -- Dotfiles suport
  { import = "lazyvim.plugins.extras.util.dot" },
  -- Customizable highlighting of patterns of text
  { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
}
