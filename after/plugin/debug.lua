require('dapui').setup()
require('dap-python').setup('/usr/bin/python3')
require('nvim-dap-virtual-text')

-- nvim-dap

vim.keymap.set("n", "<leader>b", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", "<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", "<cmd>lua require('dap').repl.open()<CR>")
vim.keymap.set("n", "<F5>", "<cmd>lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F6>", "<cmd>lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<F7>", "<cmd>lua require('dap').step_into()<CR>")

-- nvim-dap-ui
vim.keymap.set("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>dq", "<cmd>lua require('dapui').close()<CR>")


-- nvim-dap-python
vim.keymap.set("n", "<leader>dc", "<cmd>lua require('dap-python').test_class()<CR>")
vim.keymap.set("n", "<leader>dm", "<cmd>lua require('dap-python').test_method()<CR>")
vim.keymap.set("n", "<leader>df", "<cmd>lua require('dap-python').test_function()<CR>")

-- change icon of debug line
vim.fn.sign_define('DapBreakpoint', {text='🎁', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🎅', texthl='', linehl='', numhl=''})
