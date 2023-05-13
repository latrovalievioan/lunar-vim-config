-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
----- OPTIONS ----

lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "tokyonight-moon"
lvim.leader = "space"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.transparent_window = false -- transparent window
vim.opt.cursorline = false      -- disable cursor line
vim.opt.hlsearch = false        -- highlight all matches on previous search pattern
-- lvim.lsp.installer.setup.automatic_installation = true
vim.diagnostic.config({ virtual_text = false })
-- vim.opt.updatetime = 1

---- DASHBOARD PICTURE ----
lvim.builtin.alpha.dashboard.section.header.val = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠿⠷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠈⠛⢷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⠿⠛⠉⠉⠻⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠟⠋⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠻⠿⠷⠶⢶⣶⣶⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⢀⣀⣠⣤⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠗⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠀",
  "⢠⣶⡿⠿⠛⢛⣫⣿⣿⣶⣶⠶⢶⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡾⠟⠛⠛⠛⠛⠛⠛⠿⣶⣤⡀⣿⣷⣦⣤⣤⣀⠀⠀",
  "⣿⣯⣀⣀⣠⣾⡟⠉⠀⠀⠀⠀⠀⠀⠀⠉⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⣿⡏⠉⠛⠛⢻⣷⡄",
  "⠈⠙⠛⠛⢿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣆⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣷⣶⣶⣶⡿⠛⠀",
  "⠀⠀⠀⠀⠘⣷⣀⣀⣀⣤⡀⠀⠀⠀⣀⠀⠀⢠⣿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠻⣧⣤⣠⣴⣦⣀⠀⣀⣤⣦⣀⣀⣠⣾⠋⠁⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠈⠛⠛⠛⠙⠿⢷⣶⠿⠛⠿⠿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠙⠛⠛⠛⠉⠉⠙⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀",
}


---- KEYMAPS & COMMANDS ----

vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]] -- diagnostics in floating window
vim.keymap.set("n", "x", '"_x')                                                                -- delete single character without copying into register
vim.keymap.set("n", "=", "<C-a>")                                                              -- use = to increment num
vim.keymap.set("n", "-", "<C-x>")                                                              -- use - to decrement num
vim.keymap.set("i", "<C-c>", "<Esc>")                                                          -- use ctrl+c for esc
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"                                    -- cycle buffer next
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"                                    -- cycle buffer prev
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })


---- TREESITTER ----

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "typescript",
  "tsx",
  "css",
  "yaml",
  "ruby",
}

lvim.builtin.treesitter.highlight.enable = true

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


-- Floating cmdline
require('fine-cmdline').setup({
  cmdline = {
    enable_keymaps = true,
    smart_history = true,
    prompt = ':'
  },
  popup = {
    position = {
      row = '50%',
      col = '50%',
    },
    size = {
      width = '40%',
    },
    border = {
      style = 'rounded',
    },
  },
})

---- PLUGINS ----
lvim.plugins = {
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 1
    end,
  },
  {
    "tpope/vim-surround"
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    'VonHeikemen/fine-cmdline.nvim',
    dependencies = {
      { 'MunifTanjim/nui.nvim' }
    }
  }
}
