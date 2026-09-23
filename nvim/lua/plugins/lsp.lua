return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      "rust_analyzer", -- rust
      "ts_ls",         -- javascript
      "clangd",        -- c, cpp
      "lua_ls",        -- lua
      "vimls",         -- vim
      "bashls",        -- bash
    },
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)
    vim.diagnostic.config({ virtual_text = true })
  end,
}
