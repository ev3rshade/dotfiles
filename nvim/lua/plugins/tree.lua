return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
    { "<leader>f", "<cmd>NvimTreeFindFile<cr>", desc = "Reveal current file" },
  },
  init = function()
    -- load immediately if nvim was started on a directory, e.g. `nvim .`
    local arg = vim.fn.argv(0)
    if arg ~= "" and vim.fn.isdirectory(arg) == 1 then
      require("lazy").load({ plugins = { "nvim-tree.lua" } })
    end
  end,
  config = function()
    require("nvim-tree").setup({
      view = { width = 30 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
      update_focused_file = { enable = true },
    })
  end,
}
