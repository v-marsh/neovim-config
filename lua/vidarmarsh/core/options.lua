-- Set line nubers for current line relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set all tab to indent 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Set parenthesis indentation for python
vim.g.pyindent_open_paren = vim.bo.shiftwidth

-- Do not wrap lines by default
vim.opt.wrap = false

-- cursor line and location
vim.opt.scrolloff = 8
vim.opt.cursorline = true

-- Keep vim fast
vim.opt.updatetime = 50

-- Column setup 
vim.opt.colorcolumn = {72, 80}
vim.opt.signcolumn = "yes"

-- apperance
vim.opt.background = "dark"
