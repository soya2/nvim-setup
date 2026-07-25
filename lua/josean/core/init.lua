-- 临时屏蔽 nvim-lspconfig 内置配置的废弃警告
-- 等上游更新后可移除
vim.deprecate = function() end

require("josean.core.options")
require("josean.core.keymaps")
require("josean.core.statusline")
