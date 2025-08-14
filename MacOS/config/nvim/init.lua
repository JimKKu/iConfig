-- 获取 Neovim 配置根目录（~/.config/nvim）
local config_root = vim.fn.stdpath("config")

-- 将配置目录加入 package.path
package.path = package.path .. ";" .. config_root .. "/lua/?.lua"

require("keymaps") -- 快捷键模块
require("config")  -- 配置模块

-- 初始化 lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 插件配置
require("lazy").setup({
  require("themes"),
 -- 目录插件
  {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,  -- 侧边栏宽度
      },
    })
   end
  },
  -- fzf.nvim
  {
    "junegunn/fzf",
    build = "./install --all",  -- 自动编译 fzf 二进制
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
  },
  -- mini.icon | fzf.nvim 使用
  {
    "echasnovski/mini.icons",
    config = function()
      require("mini.icons").setup()
    end,
  },
  -- 多单词选中
  { "mg979/vim-visual-multi" }
})


