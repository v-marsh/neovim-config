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
vim.opt.updatetime = 45

-- Column setup
vim.opt.colorcolumn = {72, 80}
vim.opt.signcolumn = "yes"

-- Apperance
vim.opt.background = "dark"

-- Make splits appear to the right or below
vim.opt.splitright = true
vim.opt.splitbelow = true
