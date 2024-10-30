local nvim_lsp = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        -- disable the slower tsserver LSP
        tsserver = { enabled = false },
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
              },
            },
          },
          keys = {
            {
              "<leader>co",
              -- changed from organizeImports to sortImports b/c we already
              -- have a separate default key for removing unused imports.
              LazyVim.lsp.action["source.sortImports"],
              desc = "Sort Imports",
            },
          },
        },
      },
    },
  },
}
