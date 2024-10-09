local key = vim.keymap

vim.g.mapleader = " "

-- windows
key.set("n", "<leader>wh", "<C-w>v", { desc = "Split window horizontally" })
key.set("n", "<leader>wv", "<C-w>s", { desc = "Split window vertically" })

-- buffers
key.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete Buffer" })
key.set("n", "H", "<CMD>bp<CR>", { desc = "Previous Buffer" })
key.set("n", "L", "<CMD>bn<CR>", { desc = "Next Buffer" })

-- Indentation
key.set("v", "<", "<gv", { desc = "Left Indentation" })
key.set("v", ">", ">gv", { desc = "Right Indentation" })

key.set("n", "<C-s>", "<CMD>write<CR>", { desc = "Save" })
key.set({ "n", "v" }, "<ESC>", "<CMD>nohl<CR><ESC>", { desc = "No Highlight" })

-- left
key.set("n", "<C-Left>", "<C-w>h", { desc = "Goto Left Window" })
key.set("n", "<C-h>", "<C-w>h", { desc = "Goto Left Window" })
-- right
key.set("n", "<C-Right>", "<C-w>l", { desc = "Goto Right Window" })
key.set("n", "<C-l>", "<C-w>l", { desc = "Goto Right Window" })
-- up
key.set("n", "<C-Up>", "<C-w>l", { desc = "Goto Up Window" })
key.set("n", "<C-k>", "<C-w>l", { desc = "Goto Up Window" })
-- down
key.set("n", "<C-Down>", "<C-w>j", { desc = "Goto Down Window" })
key.set("n", "<C-j>", "<C-w>j", { desc = "Goto Down Window" })
