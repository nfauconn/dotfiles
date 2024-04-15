vim.keymap.set('i', '<Shift-Right>', 'copilot#Accept("\\<CR>")', {
  --expr = true,
  --replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<Shift-Left>', '<Plug>(copilot-dismiss)')
vim.keymap.set('i', '<Shift-Down>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<Shift-Up>', '<Plug>(copilot-previous)')

vim.keymap.set('i', '<C-Tab>', '<Plug>(copilot-accept-word)')


