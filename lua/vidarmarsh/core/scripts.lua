vim.api.nvim_create_autocmd({"BufWinEnter"}, {
    pattern = {"*.py"},
    callback = function()
        vim.keymap.set('n', '<F5>', ':terminal python3 -m pdb %<CR>a')
    end
    })

