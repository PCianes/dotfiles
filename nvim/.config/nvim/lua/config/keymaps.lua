-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>Mp", "<cmd>MarkdownPreview<CR>", { desc = "Preview Markdown in browser" })
vim.keymap.set("n", "<leader>Ms", "<cmd>MarkdownPreviewStop<CR>", { desc = "STOP Preview Markdown" })
