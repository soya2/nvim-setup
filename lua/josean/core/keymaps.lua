vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "clear search highlights" })

