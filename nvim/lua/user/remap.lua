vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)   --Open builtin Vim Explorer

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")    --Move down with selected content
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")    --Move up with selected content

vim.keymap.set("n", "n", "nzzzv")   -- Jump to previous but keep
vim.keymap.set("n", "N", "Nzzzv")   -- Jump to next but keep

-- Replacing without copying
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank into system clipboard:
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Cringe ass CTRL-C remap to ESC
vim.keymap.set("i", "<C-c>", "<ESC>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("x", "<leader>cc", [[:s/\(\w.*\)/\1]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

