function P(arg)
	print(vim.inspect(arg))
end

function expand_op()
	local current_line = vim.api.nvim_get_current_line()
	if current_line:match("[-+*]=") then
		_, _, spaces, lhs, operator, rest = current_line:find("(%s*)(%w+)%s*([-+*])=(.*)")
		vim.api.nvim_set_current_line(spaces .. lhs .. " = " .. lhs .. " " .. operator .. rest)
	else
		vim.notify("Line does not match pattern")
	end
end

vim.keymap.set("n", "<leader>+", ":lua expand_op()<CR>")
