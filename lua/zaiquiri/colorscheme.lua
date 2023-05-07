vim.cmd [[
try
  -- colorscheme desert 
  -- colorscheme desert 
  colorscheme system76
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
