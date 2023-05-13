---- FORMATERS AND LINTERS ----

-- formaters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    extra_args = { "--print-with", "80" },
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    filetypes = { "typescriptreact", "typescript", "javascript", "typescript.tsx", "javascript.jsx" },
    condition = function(utils)
      return utils.root_has_file(".eslintrc.js", ".eslintrc", ".eslintrc.json") -- change file extension if you use something else
    end
  },
}

-- this changes the root directory for null-ls to be calculated by searching for package.json instead of .git
lvim.lsp.null_ls.setup = {
  root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", "package.json")
}
