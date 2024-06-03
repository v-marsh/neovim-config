vim.api.nvim_create_autocmd({"BufWinEnter"}, {
    pattern = {"*.py"},
    callback = function()
        vim.keymap.set('n', '<F5>', ':terminal python3 -m pdb %<CR>a')
    end
    })

 -- Remove trailing whitespace before saving buffer contents
 vim.api.nvim_create_autocmd({"BufWritePre"}, {
     pattern = '*',
     callback = function()
         vim.cmd([[%s/\s\+$//e]])
     end
 })

 vim.api.nvim_create_autocmd({"BufWinEnter"}, {
     pattern = '*',
     callback = function()
         save_cursor = vim.fn.getpos('.')
         vim.cmd([[hi ColorColumn guibg=#00396c]])
         vim.fn.setpos('.', save_cursor)
    end
 })

 vim.api.nvim_create_autocmd({"BufWritePost"}, {
     pattern = "*.tex",
     callback = function()
         local texcompile = vim.fn.jobstart('zsh -c latexmk -pdf %')
     end,
 })
