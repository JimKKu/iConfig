return {
  -- 主题配件
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,  -- 确保优先加载
    config = function()
      -- 主题样式设置（可选）
      require("catppuccin").setup({
        flavour = "mocha",  -- 可选: latte/frappe/macchiato/mocha
        transparent_background = true,  -- 是否透明
        integrations = {               -- 集成插件支持
          cmp = true,
          gitsigns = true,
          treesitter = true,
        }
      })
      -- 应用主题
      vim.cmd.colorscheme("catppuccin")
    end,
  },
   -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- 可选：图标支持
    config = function()
      -- 配置代码放在这里（见下文）
      require("lualine").setup({
	      options = {
		      theme = "auto",       -- 自动匹配当前配色方案
		      component_separators = { left = "|", right = "|" },
		      section_separators = { left = "", right = "" }, -- 分块箭头符号
	      },
	      sections = {
		      lualine_a = { "mode" },                     -- 左1：当前模式（NORMAL/INSERT等）
		      lualine_b = { "branch", "diff", "diagnostics" }, -- 左2：Git分支+差异+错误警告
		      lualine_c = { "filename" },                 -- 左3：文件名
		      lualine_x = { "encoding", "fileformat" },    -- 右1：编码+文件格式（UNIX/Windows）
		      lualine_y = { "filetype", "progress" },     -- 右2：文件类型+编辑进度
		      lualine_z = { "location" }                  -- 右3：光标位置（行:列）
	      }
      })
    end,
  }
}
