vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.foldmethod = "indent"
opt.foldlevelstart = 99

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "light"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.fileencodings = "utf-8,gb2312,gbk,gb18030"
opt.termencoding = "utf-8"
opt.fileformats = "unix"
opt.encoding = "utf-8"

opt.mouse = ""
