-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move lines
vim.api.nvim_set_keymap("n", "<C-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
