--------------------------------------------------
--					KEYMAPS						--
--------------------------------------------------

local telescope_status_ok, builtin = pcall(require, "telescope.builtin")
if not telescope_status_ok then
  return
end

-- help
vim.keymap.set('n', '<leader>mt', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ma', builtin.man_pages, {})

vim.keymap.set('n', '<leader>cc', builtin.colorscheme, {})

-- working directory 
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})

-- lsp through files
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})

-- current buffer
--vim.keymap.set('n', '<leader>bc', builtin.git_bcommits, {})
--vim.keymap.set('n', '<leader>bs', builtin.current_buffer_fuzzy_find, {})

-- registers
vim.keymap.set('n', '<leader>fr', builtin.registers, {})

--------------------------------------------------
--					SETTINGS					--
--------------------------------------------------

-- settings for grep string
require('telescope').setup{
	defaults = {
		vimgrep_arguments = {
			'rg',
			'--color=never',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case',
			'--hidden',
		},
	}
}
