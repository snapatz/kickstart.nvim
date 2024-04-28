-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'davidgranstrom/scnvim',
	config = function()
		local scnvim = require 'scnvim'
		local map = scnvim.map
		local map_expr = scnvim.map_expr

		require('scnvim').setup {
			sclang = {
				cmd = 'C:/Program Files/SuperCollider-3.13.0/sclang.exe',
			},
			
			keymaps = {
				['<M-e>'] = map('editor.send_line', {'i', 'n'}),
				['<C-e>'] = {
					map('editor.send_block', {'i', 'n'}),
					map('editor.send_selection', 'x'),
				},
				['<CR>'] = map('postwin.toggle'),
				['<M-CR>'] = map('postwin.toggle', 'i'),
				['<M-L>'] = map('postwin.clear', {'n', 'i'}),
				['<C-k>'] = map('signature.show', {'n', 'i'}),
				['<F12>'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
				['<leader>st'] = map('sclang.start'),
				['<leader>sk'] = map('sclang.recompile'),
				['<F1>'] = map_expr('s.boot'),
				['<F2>'] = map_expr('s.meter'),
			},
			editor = {
				highlight = {
					color = 'IncSearch',
				},
			},
			postwin = {
				float = {
					enabled = true,
				},
			},
		}
	end,
}
