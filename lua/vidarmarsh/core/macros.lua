-- Keymap for changing text wrapping with <A-z>
vim.keymap.set("n", "<A-z>", function()
    if vim.opt.wrap:get() == true then
        print("set wrap false");
        vim.opt.wrap = false
    else
        print("set wrap true");
        vim.opt.wrap = true
        vim.opt.linebreak = true
        vim.opt.breakindent = true
    end
end)


