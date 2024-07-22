return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        autoinstall = true,
        --          ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "c_sharp", "typescript", "sql" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
