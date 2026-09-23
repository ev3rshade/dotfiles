return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    ts.setup({})

    -- install parsers
    ts.install({
      "rust", "javascript", "c", "cpp", "go", "lua", "vim", "bash",
      "markdown", "markdown_inline",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "rust", "javascript", "c", "cpp", "go", "lua", "vim", "sh", "markdown" },
      callback = function()
        -- pcall: skip quietly if the parser is still installing
        if not pcall(vim.treesitter.start) then
          return
        end
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
