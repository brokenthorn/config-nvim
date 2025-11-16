return {
  "neovim/nvim-lspconfig",

  opts = {
    -- LSP Server Settings
    -- Sets the default configuration for an LSP client (or all clients if the special name "*" is used).
    ---@type table<string, lazyvim.lsp.Config|boolean>
    servers = {
      -- docs: https://www.lazyvim.org/extras/lang/typescript
      vtsls = {
        -- explicitly add default filetypes, so that we can extend
        -- them in related extras
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
        settings = {
          complete_function_calls = true,
          -- config schema: https://github.com/yioneko/vtsls/blob/main/packages/service/configuration.schema.json
          vtsls = {
            enableMoveToFileCodeAction = true,
            autoUseWorkspaceTsdk = true,
            experimental = {
              maxInlayHintLength = 30,
              completion = {
                enableServerSideFuzzyMatch = true,
              },
            },
          },
          javascript = {
            -- format = { enable = false },
            tsserver = { maxTsServerMemory = 8192 },
            preferGoToSourceDefinition = true,
            updateImportsOnFileMove = { enabled = "always" },
            suggest = { completeFunctionCalls = true },
            preferences = {
              importModuleSpecifier = "non-relative",
              preferTypeOnlyAutoImports = true,
              useAliasesForRenames = false,
            },
            inlayHints = {
              enumMemberValues = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              variableTypes = { enabled = false },
            },
          },
          typescript = {
            -- format = { enable = false },
            tsserver = { maxTsServerMemory = 8192 },
            preferGoToSourceDefinition = true,
            updateImportsOnFileMove = { enabled = "always" },
            suggest = { completeFunctionCalls = true },
            preferences = {
              importModuleSpecifier = "non-relative",
              preferTypeOnlyAutoImports = true,
              useAliasesForRenames = false,
            },
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
      },
    },
  },
}
