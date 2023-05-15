
-- Leader mappings
vim.g.mapleader = " "

-- Open vim explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "Y", "y$")

-- Copy input null buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>c", "\"_c")
vim.keymap.set("v", "<leader>p", "\"_p")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")

vim.keymap.set("n", "<leader>di", function()
    if vim.o.diff then
        vim.cmd.diffoff()
    else
        vim.cmd.diffthis()
    end
end)

vim.keymap.set("n", "ght", function () vim.cmd "vertical terminal" end)
vim.keymap.set("n", "gct", function () vim.cmd "tabnew | terminal" end)

vim.keymap.set("t", "<C-w>",  "<C-\\><C-n><C-w>")
vim.keymap.set("t", "<C-w>[", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w><C-[>", "<C-\\><C-n>")

vim.keymap.set("n", "<CR>j", "o<Esc>")
vim.keymap.set("n", "<CR>k", "O<Esc>")

vim.keymap.set("n", "<CR>",      "")
vim.keymap.set("n", "<Del>",   "")
vim.keymap.set("n", "<Space>", "")

vim.keymap.set("v", "<Del>",   "")
vim.keymap.set("v", "<Space>", "")

vim.keymap.set("o", "<Del>",   "")
vim.keymap.set("o", "<Space>", "")

vim.keymap.set("n", "Q", "")

vim.keymap.set("c", "<C-f>", "<Right>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-a>", "<C-b>")
vim.keymap.set("c", "<C-d>", "<Del>")

vim.keymap.set("c", "<C-W>", "\\<\\><Left><Left>")

-- Move selected lines up and down
vim.keymap.set("v", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-K>", ":m '<-2<CR>gv=gv")

-- Horizontal scrolling. Only useful when wrap is turned off.
vim.keymap.set("n", "<C-J>", "zl")
vim.keymap.set("n", "<C-H>", "zh")

