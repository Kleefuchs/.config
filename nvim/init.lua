require("user")
print("hello")
local opts = {}
local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
require("lazy").setup(plugins, opts)
--require catppuccin
require("catppuccin").setup()

--set the colorscheme to it!
vim.cmd.colorscheme "catppuccin"
