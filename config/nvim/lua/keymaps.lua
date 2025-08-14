--[[
 使用方式：目前定义触发键为空格键，则点击'空格'键之后点击'e'键，会触发相应的命令
--]]

-- 触发键为 空格
vim.g.mapleader = " "

-- 快捷键 e | 打开目录树
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

-- fzf | 文件搜索
vim.keymap.set("n", "<leader>ff", ":Files<CR>", { silent = true })

-- 全文选中
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select all lines" })

-- 快捷键 | 跳转到目录
vim.keymap.set("n", "<leader>cd", function()
  local path = vim.fn.input("New directory: ", "", "dir")
  if path ~= "" then
    vim.cmd("Files " .. path)
  end
end, { desc = "Change directory and search" })
