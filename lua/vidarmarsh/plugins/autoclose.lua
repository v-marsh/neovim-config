return {
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require('autoclose').setup({
                keys = {
                    ['"""'] = { escape = false, close = false, pair = '"""' },
               },
                options = {
                    pair_spaces = true,
                    touch_regex = "[%w(%[{]",
                },
            })
        end,
    },
}
