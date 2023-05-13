---- KEYMAPS & COMMANDS ----

vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]] -- diagnostics in floating window
vim.keymap.set("n", "x", '"_x')                                                                -- delete single character without copying into register
vim.keymap.set("n", "=", "<C-a>")                                                              -- use = to increment num
vim.keymap.set("n", "-", "<C-x>")                                                              -- use - to decrement num
vim.keymap.set("i", "<C-c>", "<Esc>")                                                          -- use ctrl+c for esc
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"                                    -- cycle buffer next
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"                                    -- cycle buffer prev
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
