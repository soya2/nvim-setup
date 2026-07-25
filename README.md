# Nvim Setup

**mapleader = " "**

---

## 插件列表

### 主插件（14 个）

| 插件 | 说明 |
|------|------|
| `papercolor-theme` | 配色主题 |
| `plenary.nvim` | 工具库（Telescope 依赖） |
| `nvim-autopairs` | 自动配对括号/引号 |
| `Comment.nvim` | 快速注释/取消注释 |
| `gitsigns.nvim` | 行号旁 Git 增删改标记 |
| `nvim-lint` | 代码检查（ESLint） |
| `nvim-cmp` | 自动补全引擎 |
| `nvim-tree.lua` | 侧边栏文件浏览器 |
| `telescope.nvim` | 模糊搜索（文件/文本/LSP） |
| `toggleterm.nvim` | 浮动终端 |
| `nvim-treesitter` | 语法高亮/解析 |
| `nvim-lspconfig` | LSP 语言服务器配置 |
| `mason.nvim` | LSP/Linter/Formatter 安装管理器 |
| `lazy.nvim` | 插件管理器 |
| `lazygit.nvim` | Git 可视化操作（lazygit） |

### 自动依赖（6 个）

| 插件 | 说明 | 被谁依赖 |
|------|------|----------|
| `nvim-ts-context-commentstring` | 上下文感知注释 | Comment.nvim |
| `nvim-ts-autotag` | HTML/JSX 标签自动闭合 | nvim-treesitter |
| `telescope-fzf-native.nvim` | Telescope fzf 高性能过滤 | telescope.nvim |
| `cmp-nvim-lsp` | LSP 补全源 | nvim-lspconfig |
| `mason-lspconfig.nvim` | Mason → lspconfig 桥接 | mason.nvim |
| `mason-tool-installer.nvim` | 自动安装工具 | mason.nvim |

---

## 快捷键

### 通用

| 快捷键 | 功能 |
|--------|------|
| `<leader>cs` | 清除搜索高亮 |
| `<leader>f` | 通过 LSP 格式化文件 |
| `<leader>x` | 关闭当前 buffer（跳过 NvimTree） |

### Buffer 切换

| 快捷键 | 功能 |
|--------|------|
| `gt` | 下一个 buffer |
| `gT` | 上一个 buffer |
| `{n}gt` | 跳转到第 n 个 buffer（如 `3gt`） |

### 注释

| 快捷键 | 功能 |
|--------|------|
| `gcc` | 注释/取消注释当前行 |
| `gc` + motion | 注释移动到的行 |
| `gc`（可视模式） | 注释选中区域 |

### LSP

| 快捷键 | 功能 |
|--------|------|
| `gR` | 显示 LSP 引用 |
| `gD` | 跳转到声明 |
| `gd` | 跳转到定义 |
| `gi` | 跳转到实现 |
| `<leader>ca` | 代码操作（refactor 等） |
| `<leader>rn` | 重命名符号 |
| `<leader>D` | 显示 buffer 诊断列表 |
| `<leader>d` | 显示行级诊断 |
| `[d` | 上一个诊断 |
| `]d` | 下一个诊断 |
| `K` | 显示光标下文档 |
| `<leader>rs` | 重启 LSP |

### 补全

| 快捷键 | 功能 |
|--------|------|
| `<C-k>` | 上一个补全项 |
| `<C-j>` | 下一个补全项 |
| `<C-b>` | 滚动文档（上） |
| `<C-f>` | 滚动文档（下） |
| `<C-Space>` | 手动触发补全 |
| `<C-e>` | 取消补全 |
| `<CR>` | 确认选中补全 |
| `<C-p>` | 路径补全（原生） |

### 文件浏览器（nvim-tree）

| 快捷键 | 功能 |
|--------|------|
| `<leader>ee` | 打开/关闭文件树 |
| `<leader>ec` | 折叠文件树 |
| `<leader>er` | 刷新文件树 |
| `<leader>ef` | 在文件树中定位当前文件 |

### 搜索（Telescope）

| 快捷键 | 功能 |
|--------|------|
| `<leader>ff` | 模糊搜索文件名 |
| `<leader>fr` | 最近打开的文件 |
| `<leader>fs` | 全文搜索字符串 |
| `<leader>fc` | 搜索光标下单词 |

### Git（gitsigns）

| 快捷键 | 功能 |
|--------|------|
| `<leader>hr` | 重置当前修改块 |
| `<leader>hR` | 重置整个文件 |
| `<leader>hp` | 预览当前修改块 |
| `<leader>gg` | 打开 lazygit |

### 代码检查（nvim-lint）

| 快捷键 | 功能 |
|--------|------|
| `<leader>l` | 手动触发行内检查 |

### 终端（toggleterm）

| 快捷键 | 功能 |
|--------|------|
| `<C-\>` | 打开/关闭浮动终端 |

---

## 原生替代（无需插件）

| 功能 | 快捷键 | 说明 |
|------|--------|------|
| 状态栏 | 内置 | 显示文件名 + Git 分支 + 文件类型 + 行号 |
| Buffer 顶栏 | 内置 | 显示所有打开的文件标签 |
| 路径补全 | `<C-p>`（插入模式） | 调用原生 `<C-x><C-f>` |
