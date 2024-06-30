# Nvim Setup

### all keymap

**mapleader = " "**

#### basic

- `<leader>cs`: clear search highlight

#### lsp

- `gR`: telescope lsp references
- `gD`: go to declaration
- `gd`: show lsp definitions
- `gi`: show lsp implementation
- `gt`: show lsp type definitions
- `<leader>ca`: see available code action
- `<leader>rn`: smart rename
- `<leader>D`: show buffer diagnostics
- `[d`: Go to previous diagnostic
- `]d`: Go to next diagnostic
- `K`: Show documentation for what is under cursor
- `<leader>rs`: restart lsp

#### comment

- `gcc`: comment current line
- `gc`: comment selected line with visual mode
- `gcip`: comment one paragraph

#### formating

- `<leader>mp`: formating file

#### git signs

- `<leader>hr`: reset hunk (current change)
- `<leader>hR`: reset buffer (file change)
- `<leader>hp`: preview hunk

#### linting

- `<leader>l`: try lint

#### cmp (code tips)

- `<C-k>`: select prev item
- `<C-j>`: select next item
- `<C-Space>`: complete
- `<C-e>`: abort
- `<CR>`: confirm (like complete)

#### nvim-tree

- `<leader>ee`: toggle nvim tree
- `<leader>ec`: collapse nvim tree
- `<leader>er`: refresh nvim tree

#### telescope

- `<leader>ff`: find files
- `<leader>fr`: find oldfiles
- `<leader>fs`: find string

#### todo comments

- `]t`: jump next
- `[t`: jump previous

#### toggle terminal

- `<c-\>`: toggle terminal

#### toggle terminal

- `<leader>xx`: toggle trouble
