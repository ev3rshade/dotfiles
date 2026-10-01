return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "FzfLua",
  keys = {
    { "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep in project" },
    { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Grep word under cursor" },
    { "<leader>sb", "<cmd>FzfLua buffers<cr>", desc = "Open buffers" },
    { "<leader>sr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent files" },
    { "<leader>sh", "<cmd>FzfLua helptags<cr>", desc = "Help tags" },
  },
  config = function()
    require("fzf-lua").setup({})
  end,
}
