return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        -- javascript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint_d"),
        -- go
        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.golangci_lint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
