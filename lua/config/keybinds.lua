-- =========================
-- Leader keys
-- =========================
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set("n","<leader>cd",vim.cmd.Ex)
-- Disable space default behavior
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- =========================
-- File actions
-- =========================
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', opts)
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w<CR>', opts)
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', opts)

-- =========================
-- Editing behavior
-- =========================
vim.keymap.set('n', 'x', '"_x', opts)

-- Keep cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- =========================
-- Resize splits
-- =========================
--vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
--vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
--vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
--vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- =========================
-- Buffers
-- =========================
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd>enew<CR>', opts)

-- =========================
-- Window management
-- =========================
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>xs', '<cmd>close<CR>', opts)

-- Navigate splits
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- =========================
-- Tabs
-- =========================
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts)

-- =========================
-- Toggle wrap
-- =========================
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- =========================
-- Visual mode QoL
-- =========================
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', 'p', '"_dP', opts)

-- =========================
-- Diagnostics (LSP)
-- =========================
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Previous diagnostic' })

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Next diagnostic' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Line diagnostics' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Diagnostics list' })

