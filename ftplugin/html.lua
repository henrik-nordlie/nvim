vim.keymap.set("n", "<leader><enter>", function()
	vim.cmd("w")
	vim.cmd("silent !firefox %:p:r.html &")
end, { desc = "Open in browser" })
