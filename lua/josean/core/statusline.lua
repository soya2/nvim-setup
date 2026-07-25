-- 原生状态栏
-- 通过全局函数供 v:lua 调用
function _G.git_branch()
  local handle = io.popen("git branch --show-current 2>/dev/null")
  if not handle then
    return ""
  end
  local branch = handle:read("*l")
  handle:close()
  if branch and #branch > 0 then
    return " " .. branch .. " "
  end
  return ""
end

vim.opt.statusline = "%f %{v:lua.git_branch()}%=%y %l/%L"

-- 过滤掉 NvimTree 等特殊 buffer
function _G.get_real_buffers()
  return vim.tbl_filter(function(buf)
    return vim.api.nvim_buf_is_valid(buf)
      and vim.api.nvim_buf_is_loaded(buf)
      and vim.bo[buf].filetype ~= "NvimTree"
      and vim.bo[buf].filetype ~= "toggleterm"
      and vim.bo[buf].filetype ~= ""
  end, vim.api.nvim_list_bufs())
end

-- 原生顶栏（buffer 标签替代 bufferline.nvim）
-- 参考 :help 'tabline'
function _G.buffer_tabline()
  local s = ""
  local cur_buf = vim.api.nvim_get_current_buf()
  for _, buf in ipairs(_G.get_real_buffers()) do
    local name = vim.api.nvim_buf_get_name(buf)
    name = vim.fn.fnamemodify(name, ":t")
    if name == "" then
      name = "[No Name]"
    end
    local modified = vim.api.nvim_buf_get_option(buf, "modified") and " +" or ""
    if buf == cur_buf then
      s = s .. "%#TabLineSel# " .. name .. modified .. " %#TabLine#"
    else
      s = s .. "%#TabLine# " .. name .. modified .. " "
    end
  end
  return s
end

vim.opt.tabline = "%!v:lua.buffer_tabline()"
vim.opt.showtabline = 2
