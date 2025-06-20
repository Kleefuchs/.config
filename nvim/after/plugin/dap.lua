require("mason").setup()
require("mason-nvim-dap").setup({
    ensure_installed = {"codelldb", "lldb"},
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

local codelldb = {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
}

dap.configurations.c = {
    codelldb
}

dap.configurations.cpp = {
    codelldb
}


dap.configurations.rust = {
    codelldb
}

vim.keymap.set("n", "<leader>db", function () dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dr", function () dap.continue() end)
