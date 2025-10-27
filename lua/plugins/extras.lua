return {
  -- The recommended setup to use prettier with linters is to NOT integrate it with eslint.
  -- For this config, we have two extras, to enable eslint fix on save
  -- and enable the prettier formatter with null-ls.
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  -- TypeScript LSP with provisiond for Deno's LSP
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- jsonls, schemastore packages, json, json5, jsonc
  { import = "lazyvim.plugins.extras.lang.json" },
}
