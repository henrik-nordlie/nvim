vim.keymap.set("n", "<leader><enter>", function()
	vim.cmd("w")
	vim.cmd("silent !pdflatex *.tex")
end, { desc = "Save and Compile .tex file" })
