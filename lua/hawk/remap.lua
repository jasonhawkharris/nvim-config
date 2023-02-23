local function cmd(command)
    return table.concat({ '<Cmd>', command, '<CR>' })
end
-- Explore when not using nvim-tree.nvim
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Move shit around all nice
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>c", cmd 'set colorcolumn=0')
vim.keymap.set("n", "<leader>C", cmd 'set colorcolumn=90')
