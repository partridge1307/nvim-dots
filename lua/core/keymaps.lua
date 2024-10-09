local key = vim.keymap

vim.g.mapleader = " "

-- windows
key.set("n", "<leader>wh", "<CMD>wincmd v<CR>", { desc = "Split Window Horizontally" })
key.set("n", "<leader>wv", "<CMD>wincmd s<CR>", { desc = "Split Window Hertically" })
key.set("n", "<leader>ww", "<CMD>wincmd w<CR>", { desc = "Switch Windows" })

-- buffers
key.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete Buffer" })
key.set("n", "H", "<CMD>bp<CR>", { desc = "Previous Buffer" })
key.set("n", "L", "<CMD>bn<CR>", { desc = "Next Buffer" })

-- Indentation
key.set("v", "<", "<gv", { desc = "Left Indentation" })
key.set("v", ">", ">gv", { desc = "Right Indentation" })

key.set("n", "<C-s>", "<CMD>write<CR>", { desc = "Save" })
key.set({ "n", "v", "i" }, "<ESC>", "<CMD>nohl<CR><ESC>", { desc = "No Highlight" })

-- left
key.set({ "n", "t" }, "<C-Left>", "<CMD>wincmd h<CR>", { desc = "Goto Left Window" })
key.set({ "n", "t" }, "<C-h>", "<CMD>wincmd h<CR>", { desc = "Goto Left Window" })
-- right
key.set({ "n", "t" }, "<C-Right>", "<CMD>wincmd l<CR>", { desc = "Goto Right Window" })
key.set({ "n", "t" }, "<C-l>", "<CMD>wincmd l<CR>", { desc = "Goto Right Window" })
-- up
key.set({ "n", "t" }, "<C-Up>", "<CMD>wincmd k<CR>", { desc = "Goto Up Window" })
key.set({ "n", "t" }, "<C-k>", "<CMD>wincmd k<CR>", { desc = "Goto Up Window" })
-- down
key.set({ "n", "t" }, "<C-Down>", "<CMD>wincmd j<CR>", { desc = "Goto Down Window" })
key.set({ "n", "t" }, "<C-j>", "<CMD>wincmd j<CR>", { desc = "Goto Down Window" })
