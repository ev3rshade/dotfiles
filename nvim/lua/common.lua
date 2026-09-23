-- Keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core Editor Options
local opt = vim.opt

opt.number = true         -- line numbers
opt.relativenumber = true -- relative line numbers
opt.expandtab = true      -- convert tabs to spaces
opt.shiftwidth = 2        -- indent size
opt.tabstop = 2           -- tab size
opt.autoindent = true     -- auto indentation
opt.scrolloff = 7         -- min lines betw cursor and screen edges
opt.colorcolumn = "80"    -- column marker
opt.ignorecase = true     -- case insensitive search
opt.encoding = "utf-8"    -- file char encoding
opt.fileformat = "unix"   -- file format
opt.termguicolors = true  -- 24-bit rgb colors
opt.swapfile = false      -- swap file
opt.mouse = ""            -- disable mouse

-- Basic Keymaps
local keymap = vim.keymap.set
keymap("i", "jj", "<Esc>", { silent = true })

-- Disable arrow keys in Normal mode
vim.keymap.set('n', '<Up>', '<Nop>', { desc = 'Disable Up arrow key' })
vim.keymap.set('n', '<Down>', '<Nop>', { desc = 'Disable Down arrow key' })
vim.keymap.set('n', '<Left>', '<Nop>', { desc = 'Disable Left arrow key' })
vim.keymap.set('n', '<Right>', '<Nop>', { desc = 'Disable Right arrow key' })
