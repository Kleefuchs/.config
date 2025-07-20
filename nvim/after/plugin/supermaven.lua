local supermaven_api = require("supermaven-nvim.api")
supermaven_api.stop();

vim.keymap.set("i", "<C-a>", function () supermaven_api.toggle() end)
