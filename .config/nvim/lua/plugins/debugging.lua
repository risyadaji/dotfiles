return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")

      require("dap-go").setup()
      require("dapui").setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<F5>", dap.continue, {})
      vim.keymap.set('n', '<F10>', dap.step_over, {})
      vim.keymap.set('n', '<F11>', dap.step_into, {})
      vim.keymap.set('n', '<F12>', dap.step_out, {})
      vim.keymap.set("n", "<Leader>dt", ":DapUiToggle<CR>", {})
      vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
      vim.keymap.set("n", "<Leader>dr", ":lua require('dapui').open({reset = true})<CR>", {})

      vim.fn.sign_define("DapBreakpoint", {text = "⏺", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl="DapBreakpoint"})
    end,
  },
}
