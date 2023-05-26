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
keymap("v", "jk", "<ESC>", opts)

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

[[     ________  _______   ________  ___      ___ ___  _____ ______         ]] 
[[     |\_____  \|\  ____\ |\   __  \|\  \    /  /|\  \|\   _ \  _   \      ]]
[[      \|___/  /\ \  \__| \ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \     ]]
[[          /  / /\ \   __| \ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \    ]]
[[         /  /_/__\ \  \__|_\ \  \\\  \ \    / /   \ \  \ \  \    \ \  \   ]]
[[        |\________\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\  ]]
[[         \|_______|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|  ]]
                                                                   
                                                                   
                                                                   

███████╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
╚══███╔╝██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ███╔╝ █████╗  ██║   ██║██║   ██║██║██╔████╔██║
 ███╔╝  ██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
███████╗███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚══════╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
                                                
      ___           ___           ___           ___                       ___     
     /\  \         /\  \         /\  \         /\__\          ___        /\__\    
     \:\  \       /::\  \       /::\  \       /:/  /         /\  \      /::|  |   
      \:\  \     /:/\:\  \     /:/\:\  \     /:/  /          \:\  \    /:|:|  |   
       \:\  \   /::\~\:\  \   /:/  \:\  \   /:/__/  ___      /::\__\  /:/|:|__|__ 
 _______\:\__\ /:/\:\ \:\__\ /:/__/ \:\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\
 \::::::::/__/ \:\~\:\ \/__/ \:\  \ /:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /
  \:\~~\~~      \:\ \:\__\    \:\  /:/  /   |:|__/:/  /  \::/__/           /:/  / 
   \:\  \        \:\ \/__/     \:\/:/  /     \::::/__/    \:\__\          /:/  /  
    \:\__\        \:\__\        \::/  /       ~~~~         \/__/         /:/  /   
     \/__/         \/__/         \/__/                                   \/__/    
 [[                                                   ]],
      [[                                              ___  ]],
      [[                                           ,o88888 ]],
      [[                                        ,o8888888' ]],
      [[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
      [[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
      [[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
      [[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
      [[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
      [[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
      [[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
      [[             . ..:.::o:ooooOoCoCCC"o:o             ]],
      [[             . ..:.::o:o:,cooooCo"oo:o:            ]],
      [[          `   . . ..:.:cocoooo"'o:o:::'            ]],
      [[          .`   . ..::ccccoc"'o:o:o:::'             ]],
      [[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
      [[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
      [[     ...:.'.:.::::"'    . . . . .'                 ]],
      [[    .. . ....:."' `   .  . . ''                    ]],
      [[  . . . ...."'                                     ]],
      [[  .. . ."'                                         ]],
      [[ .                                                 ]],
      [[                                                   ]],
      [[                                                                     ]],
      [[                                                       ___           ]],
      [[                                                    ,o88888          ]],
      [[                                                 ,o8888888'          ]],
      [[                           ,:o:o:oooo.        ,8O88Pd8888"           ]],
      [[                       ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"             ]],
      [[                     ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"               ]],
      [[                    , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"                 ]],
      [[                   , ..:.::o:ooOoOO8O888O8O,COCOO"                   ]],
      [[                  , . ..:.::o:ooOoOOOO8OOOOCOCO"                     ]],
      [[                   . ..:.::o:ooOoOoOO8O8OCCCC"o                      ]],
      [[                      . ..:.::o:ooooOoCoCCC"o:o                      ]],
      [[                      . ..:.::o:o:,cooooCo"oo:o:                     ]],
      [[                   `   . . ..:.:cocoooo"'o:o:::'                     ]],
      [[                   .`   . ..::ccccoc"'o:o:o:::'                      ]],
      [[                  :.:.    ,c:cccc"':.:.:.:.:.'                       ]],
      [[                ..:.:"'`::::c:"'..:.:.:.:.:.'                        ]],
      [[              ...:.'.:.::::"'    . . . . .'                          ]],
      [[             .. . ....:."' `   .  . . ''                             ]],
      [[           . . . ...."'                                              ]],
      [[           .. . ."'                                                  ]],
      [[          .                                                          ]],
      [[ ________  _______   ________  ___      ___ ___  _____ ______        ]], 
      [[ |\_____  \|\  ____\ |\   __  \|\  \    /  /|\  \|\   _ \  _   \     ]],
      [[  \|___/  /\ \  \__| \ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \    ]],
      [[      /  / /\ \   __| \ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \   ]],
      [[     /  /_/__\ \  \__|_\ \  \\\  \ \    / /   \ \  \ \  \    \ \  \  ]],
      [[    |\________\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\ ]],
      [[     \|_______|\|_______|\|_______|\|__|/       \|__|\|__|     \|__| ]],
      [[                                                                     ]],

      [[                                                       ___           ]],
      [[                                                    ,o88888          ]],
      [[                                                 ,o8888888'          ]],
      [[                           ,:o:o:oooo.        ,8O88Pd8888"           ]],
      [[                       ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"             ]],
      [[                     ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"               ]],
      [[                    , ..: ________ OOO8OOOOo.FdO8O8"                 ]],
      [[                   , ..:. |\_____  \ 888O8O,COCOO"                   ]],
      [[                  , . ..:. \|___/  /\ 8OOOOCOCO"                     ]],
      [[                   . ..:.::o:  /  / / O8OCCCC"o                      ]],
      [[                      . ..:.  /  /_/__ oCCC"o:o                      ]],
      [[                      . ..:. |\________\ o"oo:o:                     ]],
      [[                   `   . . .  \|_______| o:o:::'                     ]],
      [[                   .`   . ..::ccccoc"'o:o:o:::'                      ]],
      [[                  :.:.    ,c:cccc"':.:.:.:.:.'                       ]],
      [[                ..:.:"'`::::c:"'..:.:.:.:.:.'                        ]],
      [[              ...:.'.:.::::"'    . . . . .'                          ]],
      [[             .. . ....:."' `   .  . . ''                             ]],
      [[           . . . ...."'                                              ]],
      [[           .. . ."'                                                  ]],
      [[          . '                                                        ]],
      [[  ________  _______   ________  ___      ___ ___  _____ ______       ]], 
      [[ |\_____  \|\  ____\ |\   __  \|\  \    /  /|\  \|\   _ \  _   \     ]],
      [[  \|___/  /\ \  \__| \ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \    ]],
      [[      /  / /\ \   __| \ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \   ]],
      [[     /  /_/__\ \  \__|_\ \  \\\  \ \    / /   \ \  \ \  \    \ \  \  ]],
      [[    |\________\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\ ]],
      [[     \|_______|\|_______|\|_______|\|__|/       \|__|\|__|     \|__| ]],

 ,gggggggg,                                                                  
d8P""""""Y8b,                                                                
88,_a     `8b                                                                
`Y8P"      88                                         gg                     
           88                                         ""                     
          d8'    ,ggg,     ,ggggg,       ggg    gg    gg    ,ggg,,ggg,,ggg,  
       _,d8'    i8" "8i   dP"  "Y8ggg   d8"Yb   88bg  88   ,8" "8P" "8P" "8, 
     d8888ba,   I8, ,8I  i8'    ,8I    dP  I8   8I    88   I8   8I   8I   8I 
         "Y88b, `YbadP' ,d8,   ,d8'  ,dP   I8, ,8I  _,88,_,dP   8I   8I   Yb,
         ,d8888888P"Y888P"Y8888P"    8"     "Y8P"   8P""Y88P'   8I   8I   `Y8
       ,8P"  88                                                              
      d8'    88                                                              
     d8'    ,88                                                              
     88     d8'                                                              
     Y8,_ _,8P                                                               
      "Y888P"                                                                

 _____                     _            
/ _  /  ___   ___  __   __(_) _ __ ___  
\// /  / _ \ / _ \ \ \ / /| || '_ ` _ \ 
 / //\|  __/| (_) | \ V / | || | | | | |
/____/ \___| \___/   \_/  |_||_| |_| |_|
                                        
 
 ______     ______     ______     __   __   __     __    __    
/\___  \   /\  ___\   /\  __ \   /\ \ / /  /\ \   /\ "-./  \   
\/_/  /__  \ \  __\   \ \ \/\ \  \ \ \'/   \ \ \  \ \ \-./\ \  
  /\_____\  \ \_____\  \ \_____\  \ \__|    \ \_\  \ \_\ \ \_\ 
  \/_____/   \/_____/   \/_____/   \/_/      \/_/   \/_/  \/_/ 
                                                               

 ________  
 |\_____  \ 
  \|___/  /\ 
      /  / / 
     /  /_/__ 
    |\________\ 
     \|_______| 

