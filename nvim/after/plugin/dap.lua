require("mason").setup()
require("mason-nvim-dap").setup({
    ensure_installed = {"codelldb"},
    automatic_installation = true,
    handlers = {},
})

require("nvim-dap-virtual-text").setup()

local dap = require("dap");
local dapui = require("dapui");

require("dap-info").setup({})

dapui.setup();

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.after.event_initialized.dapui_config = function()
  dapui.open();
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close();
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close();
end

dap.adapters.codelldb = {
  type = 'server',
  host = '127.0.0.1',
  port = "${port}",
  executable = {
    command = 'codelldb',
    args = { "--port", "${port}" },

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.c = {
    {
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd()..'/', 'file')
        end,
        --program = '${fileDirname}/${fileBasenameNoExtension}',
        cwd = '${workspaceFolder}',
        terminal = 'integrated'
    }
}

dap.configurations.cpp = dap.configurations.c


dap.configurations.rust = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

vim.keymap.set("n", "<leader>db", function () dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dr", function () dap.continue() end)
