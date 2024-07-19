return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "VonHeikemen/lsp-zero.nvim",
    },
    lazy = false,
    config = function()
      local lsp_zero, lsp_config = require("lsp-zero"), require("lspconfig")

      lsp_zero.extend_lspconfig()
      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })
        lsp_zero.buffer_autoformat()
      end)

      lsp_zero.set_sign_icons({
        error = "✘",
        warn = "▲",
        hint = "⚑",
        info = "»",
      })

      -- auto install lsp
      require("mason").setup({})
      require("mason-lspconfig").setup({
        handlers = {
          lsp_zero.default_setup,
        },
      })

      -- typescript
      lsp_config.tsserver.setup({
        init_options = {
          preferences = {
            disableSuggestions = true,
          },
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- local lspconfig = require("lspconfig")
      -- lspconfig.lua_ls.setup({ capabilities = capabilities })
      -- lspconfig.tsserver.setup({ capabilities = capabilities })
      -- lspconfig.gopls.setup({ capabilities = capabilities })

      -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      -- vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
      -- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
