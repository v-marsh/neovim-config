-- Set mapleader key
vim.g.mapleader = " "

-- Set keymap group prefixes
local fileleader = "<leader>f"

-- General keymaps
vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Remap all window commands to use a nicer prefix
vim.keymap.set("n", "<leader>w", "<C-W>")

-- File search keymappings
vim.keymap.set("n", fileleader .. "f", ":Ex<CR>")

-- Keymap for changing text wrapping with <A-z>
vim.keymap.set("n", "<A-z>", function()
    if vim.opt.wrap:get() == true then 
        print("set wrap false");
        vim.opt.wrap = false 
    else 
        print("set wrap true");
        vim.opt.wrap = true
    end
end)
