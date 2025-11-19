-- -- keybinding to toggle the colorscheme
-- vim.api.nvim_set_keymap('n', '<leader>tt', ':CyberdreamToggleMode<CR>', { noremap = true, silent = true })
-- vim.api.nvim_create_autocmd('User', {
--   pattern = 'CyberdreamToggleMode',
--   callback = function(event)
--     print('Switched to ' .. event.data .. ' mode!')
--   end,
-- })
return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'cyberdream'
    -- keybinding to toggle the colorscheme
    vim.api.nvim_set_keymap('n', '<leader>tt', ':CyberdreamToggleMode<CR>', { noremap = true, silent = true })

    vim.api.nvim_create_autocmd('User', {
      pattern = 'CyberdreamToggleMode',
      callback = function(event)
        print('Switched to ' .. event.data .. ' mode!')
      end,
    })
  end,
}
