return {
   "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
              "angular",
              "bash",
              "css",
              "diff",
              "dockerfile",
              "html",
              "gitignore",
              "graphql",
              "javascript",
              "jsdoc",
              "json",
              "lua",
              "luadoc",
              "php",
              "scss",
              "tsx",
              "typescript",
              "vim",
              "vimdoc",
              "yaml",
              "go",
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true }, 
          auto_install = true,
        })
    end
}
