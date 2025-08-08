require("mason").setup()
require("mason-nvim-dap").setup({
    ensure_installed = { "codelldb", "lldb", "java-debug-adapter", "netocoredbg" },
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

function mysplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

local codelldb = {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = function()
        return mysplit(vim.fn.input('Enter program args: '), ' ')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
}

dap.configurations.java = {
    {
        type = "java",
        name = "Debug",
        request = "launch",
        program = "${file}",
        cwd = '${workspaceFolder}',
    },
}

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/bin/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
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

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

local pb = require('persistent-breakpoints')
pb.setup {
    load_breakpoints_event = { "BufReadPost" }
};

local pbapi = require('persistent-breakpoints.api')

vim.keymap.set("n", "<leader>dc", function() dap.continue() end)
vim.keymap.set("n", "<leader>dr", function() dap.continue() end)
vim.keymap.set("n", "<leader>dd", function() dap.disconnect() end)
vim.keymap.set("n", "<leader>de", function() dap.step_out() end)
vim.keymap.set("n", "<leader>di", function() dap.step_into() end)
vim.keymap.set("n", "<leader>do", function() dap.step_over() end)

vim.keymap.set("n", "<leader>dbt", function() pbapi.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dbcs", function() pbapi.set_conditional_breakpoint() end)
vim.keymap.set("n", "<leader>dbca", function() pbapi.clear_all_breakpoints() end)
vim.keymap.set("n", "<leader>dls", function() pbapi.set_log_point() end)
