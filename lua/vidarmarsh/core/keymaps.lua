-- Set mapleader key
vim.g.mapleader = " "

-- Set keymap group prefixes
local fileleader = "<leader>f"

-- Disable arrow keys and backspace to aid learning
vim.keymap.set({"i", "n"}, "<Right>", "")
vim.keymap.set({"i", "n"}, "<Up>", "")
vim.keymap.set({"i", "n"}, "<Left>", "")
vim.keymap.set({"i", "n"}, "<Down>", "")

-- General keymaps
vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", '"+p', '"+p:%s/\r/<CR>')


-- Remap all window commands to use a nicer prefix
vim.keymap.set("n", "<leader>w", "<C-W>")

-- File search keymappings
vim.keymap.set("n", "<leader>ex", ":Ex<CR>")
