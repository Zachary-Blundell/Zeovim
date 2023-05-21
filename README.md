<h1 align="center"> Keymaps </h1>

<!-- # Idea -->
<!-- ## plugin -->
<!-- ### mode -->

leader = space 

### Sections

- General
- Editing
- Navigation / Display
- Search and Replace

# General

### Press jk fast to enter
map("i", "jk", "<ESC>")

# Editing
### Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

## Comment

| Keymap | Description | Mode |
| ----------- | ----------- | ----------- |
| gcc | Toggles the current line using linewise comment | Normal |
| gbc | Toggles the current line using blockwise comment | Normal |
| [count]gcc | Toggles the number of line given as a prefix-count using linewise | Normal |
| [count]gbc | Toggles the number of line given as a prefix-count using blockwise | Normal |
| gc[count]{motion} | (Op-pending) Toggles the region using linewise comment | Normal |
| gb[count]{motion} | (Op-pending) Toggles the region using blockwise comment | Normal |
| gc | Toggles the region using linewise comment | Visual |
| gb | Toggles the region using blockwise comment | Visual |
| **Extra mappings** |||
| gco | Insert comment to the next line and enters INSERT mode | Normal |
| gcO | Insert comment to the previous line and enters INSERT mode | Normal |
| gcA | Insert comment to end of the current line and enters INSERT mode | Normal |

### Examples
#### Linewise
```
`gcw` - Toggle from the current cursor position to the next word
`gc$` - Toggle from the current cursor position to the end of line
`gc}` - Toggle until the next blank line
`gc5j` - Toggle 5 lines after the current cursor position
`gc8k` - Toggle 8 lines before the current cursor position
`gcip` - Toggle inside of paragraph
`gca}` - Toggle around curly brackets
```
#### Blockwise
```
`gb2}` - Toggle until the 2 next blank line
`gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
`gbac` - Toggle comment around a class (w/ LSP/treesitter support)
```

# Navigation / Display

## Remaps

| Keymap | Description | Mode |
| ----------- | ----------- | ----------- |
| | **Better Window Navigation**  | |
| Ctrl h | move to window on the left | Normal |
| Ctrl l | move to window on the right | Normal |
| Ctrl j | move to window below | Normal |
| Ctrl k | move to window above | Normal |
| | **Other** | |
| Leader e | opens tree explorer | Normal |
| | **Navigate buffers** | |
| L | move to next buffer | Normal |
| H | move to previous buffer | Normal |
| | **Resize with arrows** | |
| Up arrow | increase hight | Normal |
| Down arrow | decrease hight | Normal |
| Right arrow | increase width | Normal |
| Left arrow | decrease width | Normal |

# Telescope
| Keymap | Description | Mode |
| ----------- | ----------- | ----------- |
| leader ff | Open fuzzy find menu | Normal |
| Ctrl p> | Open find git files menu | Normal |
| leader ps | Live grep files | Normal | 

## Harpoon
| Keymap | Description | Mode |
| ----------- | ----------- | ----------- |
| leader a | add file to Harpoon | Normal |
| leader fh | open quick menu | Normal |
| leader t | go to file 1 | Normal |
| leader g | go to file 2 | Normal |
| leader b | go to file 3 | Normal |
| leader y | go to file 4 | Normal |
| leader h | go to file 5 | Normal |
| leader n | go to file 6 | Normal |

# Search and Replace

### find and replace the word cursor is on 
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])






### Makes current file exacutable 
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

### Keeps cursor... 
### at the begining when using J
map("n", "J", "mzJ`z")  
### in center when...  
map("n", "<C-d>", "<C-d>zz")  ### going half page down  
map("n", "<C-u>", "<C-u>zz")  -- going half page up  
map("n", "n", "nzzzv")        -- moving from search terms 
map("n", "N", "Nzzzv")




--- Insert ---
map("i", "<C-c>", "<Esc>")

--- Visual ---
### Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

### Move text up and down
map("v", "<A-j>", ":m '>+1<CR>gv=gv")  --map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")  --map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "p", '"_dP')

--- Visual Block ---
### Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")
### greatest remap ever
map("x", "<leader>p", [["_dP]])




# todos 
- fix cmp/lsp-zero 
    - comfermations / tab / super tab
- format shortcuts in readme 
- fix live grep in Telescope
- add gitsigns
- add windwp/nvim-ts-autotag
- add a formatter like null-ls
