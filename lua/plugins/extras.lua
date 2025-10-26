return {
  -- The recommended setup to use prettier with linters is to not integrate it with eslint.
  -- For this config, we have two extras, to enable eslint fix on save
  -- and enable the prettier formatter with null-ls.
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  -- Add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc:
  { import = "lazyvim.plugins.extras.lang.json" },
}
