require("options")
require("plugins")

-- Lua
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
-- In your init.lua or init.vim
vim.keymap.set('i', '<Tab>', function()
  if require('copilot.suggestion').is_visible() then
    require('copilot.suggestion').accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, false, true), 'n', false)
  end
end, { desc = 'Super Tab' })

vim.cmd([[
  cnoreabbrev tabedit tabnew
]])

vim.opt.clipboard = "unnamedplus"
