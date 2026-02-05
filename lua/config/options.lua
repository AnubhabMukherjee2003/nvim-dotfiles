-- UI
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.numberwidth = 4
vim.opt.showtabline = 2
vim.opt.showmode = false
vim.opt.cmdheight = 1
vim.opt.pumheight = 10
vim.opt.conceallevel = 0

-- Clipboard & input
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

-- Wrapping (writing-friendly)
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Splits & scrolling
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

-- Performance
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.fileencoding = 'utf-8'

-- Completion
vim.opt.completeopt = 'menuone,noselect'
vim.opt.shortmess:append('c')

