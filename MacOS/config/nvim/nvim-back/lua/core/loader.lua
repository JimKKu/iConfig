-- 安全引入

local M = {}

function M.safe_require(module)
  local config_root = vim.fn.stdpath("config")
  package.path = package.path .. ";" .. config_root .. "/lua/?.lua"
  local ok, mod = pcall(require, module)
  if not ok then
    vim.notify("Failed to load module: " .. module, vim.log.levels.ERROR)
    return nil
  end
  return mod
end

return M
