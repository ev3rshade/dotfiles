-- Keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core Editor Options
local opt = vim.opt

opt.number = true         -- line numbers
opt.relativenumber = true -- relative line numbers
opt.ignorecase = true     -- case insensitive search
opt.termguicolors = true  -- enable 24-bit rgb colors
opt.expandtab = true      -- convert tabs to spaces
opt.shiftwidth = 2        -- indent size
opt.tabstop = 2           -- tab size

-- Basic Keymaps
local keymap = vim.keymap.set
keymap("i", "jj", "<Esc>", { silent = true })

-- Plugin Manager
local plugin_dir = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
local lazypath = vim.fs.joinpath(plugin_dir, "lazy.nvim")

if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

local plugin_specs = {
}

require("lazy").setup {
  spec = plugin_specs,
  ui = {
    border = "rounded",
    title = "Plugin Manager",
    title_pos = "center",
  },
  rocks = {
    enabled = false,
    hererocks = false,
  },
}
