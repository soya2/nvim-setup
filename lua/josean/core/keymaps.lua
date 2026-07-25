vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "clear search highlights" })

-- Buffer 切换（跳过 NvimTree 等特殊 buffer）
keymap.set("n", "gt", function()
  local count = vim.v.count
  local bufs = _G.get_real_buffers()
  if #bufs == 0 then return end
  if count > 0 then
    if bufs[count] then
      vim.api.nvim_set_current_buf(bufs[count])
    end
  else
    local cur = vim.api.nvim_get_current_buf()
    local idx = nil
    for i, b in ipairs(bufs) do
      if b == cur then idx = i; break end
    end
    vim.api.nvim_set_current_buf(bufs[(idx and idx % #bufs or 0) + 1])
  end
end, { desc = "Next buffer / {n}gt = go to buffer n" })

keymap.set("n", "gT", function()
  local cur = vim.api.nvim_get_current_buf()
  local bufs = _G.get_real_buffers()
  if #bufs == 0 then return end
  local idx = nil
  for i, b in ipairs(bufs) do
    if b == cur then idx = i; break end
  end
  vim.api.nvim_set_current_buf(bufs[((idx or 1) - 2 + #bufs) % #bufs + 1])
end, { desc = "Previous buffer" })

keymap.set("n", "<leader>x", function()
  local cur = vim.api.nvim_get_current_buf()
  local bufs = _G.get_real_buffers()

  vim.cmd("bd " .. cur)

  -- 删完后跳到下一个非 NvimTree 的 buffer
  local remaining = vim.tbl_filter(function(b)
    return vim.api.nvim_buf_is_valid(b)
      and vim.api.nvim_buf_is_loaded(b)
      and vim.bo[b].filetype ~= "NvimTree"
      and vim.bo[b].filetype ~= "toggleterm"
  end, vim.api.nvim_list_bufs())

  if #remaining > 0 then
    vim.api.nvim_set_current_buf(remaining[1])
  end
end, { desc = "Close buffer (skip NvimTree)" })

keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file via LSP" })

keymap.set("n", "<leader>fo", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Document symbols" })
