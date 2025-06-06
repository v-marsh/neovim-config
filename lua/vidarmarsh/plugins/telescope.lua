return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles)
        vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find)
        vim.keymap.set("n", "<leader>fa", builtin.live_grep)
        local actions = require("telescope.actions")

        require("telescope").setup{
            defaults = {
                mappings = {
                    i = {
                        ["jk"] = actions.close,
                    },
                },
            },
        }
    end,
}

