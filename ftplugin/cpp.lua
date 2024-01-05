-- custom c++ nvim settings

vim.keymap.set('n', '<leader>vi', 'ivector<int> ', { noremap = true })
vim.keymap.set('n', '<leader>vs', 'ivector<string> ', { noremap = true })
vim.keymap.set('n', '<leader>ma', 'oint main () {\n\t\n\treturn 0;\n}', { noremap = true })

-- compile current file using g++ with --debug flag

vim.keymap.set('n', '<leader>md', ':!g++ --debug %<CR><CR>', { noremap = true })

