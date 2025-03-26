-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>Mp", "<cmd>MarkdownPreview<CR>", { desc = "Preview Markdown in browser" })
vim.keymap.set("n", "<leader>Ms", "<cmd>MarkdownPreviewStop<CR>", { desc = "STOP Preview Markdown" })
vim.keymap.set("n", "<leader>Co", "<cmd>CopilotChat<CR>", { desc = "Open Copilot Chat" })
vim.keymap.set("n", "<leader>Cc", "<cmd>CopilotChatClose<CR>", { desc = "Close Copilot Chat" })

require("which-key").register({
  C = { name = "Copilot", icon = "" },
  M = { name = "Markdown", icon = "" },
}, { prefix = "<leader>" })
