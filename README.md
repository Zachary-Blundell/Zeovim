# My Remaps
leader = space 
## Normal mode
### Better window navigation
| Keymap | Description |
| ----------- | ----------- |
| Ctrl h | move to window on the left |
| Ctrl l | move to window on the right |
| Ctrl j | move to window below |
| Ctrl k | move to window above |

### Opens explorer
map("n", "<leader>e", vim.cmd.Ex)
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

### Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

### Navigate buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

### Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

--- Insert ---
### Press jk fast to enter
map("i", "jk", "<ESC>")
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



# Harpoon
## Normal mode
| Keymap | Description |
| ----------- | ----------- |
| <leader>a | add file to Harpoon |
| <leader>fh | open quick menu |
| <leader>t | go to file 1 |
| <leader>g | go to file 2 |
| <leader>b | go to file 3 |
| <leader>y | go to file 4 |
| <leader>h | go to file 5 |
| <leader>n | go to file 6 |

# Telescope
## Normal mode
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

# Comment

## NORMAL mode

`gcc` - Toggles the current line using linewise comment
`gbc` - Toggles the current line using blockwise comment
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment

## VISUAL mode

`gc` - Toggles the region using linewise comment
`gb` - Toggles the region using blockwise comment
## Extra mappings
### NORMAL mode

`gco` - Insert comment to the next line and enters INSERT mode
`gcO` - Insert comment to the previous line and enters INSERT mode
`gcA` - Insert comment to end of the current line and enters INSERT mode

## Examplses 
### Linewise

`gcw` - Toggle from the current cursor position to the next word
`gc$` - Toggle from the current cursor position to the end of line
`gc}` - Toggle until the next blank line
`gc5j` - Toggle 5 lines after the current cursor position
`gc8k` - Toggle 8 lines before the current cursor position
`gcip` - Toggle inside of paragraph
`gca}` - Toggle around curly brackets

### Blockwise

`gb2}` - Toggle until the 2 next blank line
`gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
`gbac` - Toggle comment around a class (w/ LSP/treesitter support)

# todos 
- format shortcuts in readme 
- fix cmp/lsp-zero 
- add gitsigns
- add a formatter like null-ls
