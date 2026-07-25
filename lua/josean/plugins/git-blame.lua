return {
  "f-person/git-blame.nvim",
  event = "VeryLazy",
  config = function()
    vim.g.gitblame_date_format = "%y-%m-%d %H:%M"
    vim.g.gitblame_message_template = "  <author> <date> <sha>"
    vim.g.gitblame_display_virtual_text = 1
  end,
  keys = {
    { "<leader>gb", "<cmd>GitBlameToggle<CR>", desc = "Toggle git blame" },
  },
}
