-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "bash",
      "c",
      "cpp",
      "css",
      "go",
      "html",
      "http",
      "javascript",
      "jsonc",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "sql",
      "toml",
      "tsx",
      "typescript",
      "vimdoc",
      "xml",
      "json",
      "graphql",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
