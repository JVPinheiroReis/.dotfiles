local map = vim.keymap.set

-- Terminal
map({ "n" }, "<C-;>", function()
    Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Open Terminal (Root Dir)" })

map({ "t" }, "<C-;>", "<cmd>close<cr>", { desc = "Hide Terminal (Root Dir)" })

-- Comments
map("n", "<C-/>", "<esc><cmd>normal gcc<cr>", { desc = "Toggle Comment" })
