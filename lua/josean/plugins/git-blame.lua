return {
  "f-person/git-blame.nvim",
  event = "VeryLazy",
  opts = {
    date_format = "%Y-%m-%d",
    message_template = "  %author%  (%date%) · %summary%",
  },
  keys = {
    { "<leader>gb", "<cmd>GitBlameToggle<CR>", desc = "Toggle git blame" },
  },
}
