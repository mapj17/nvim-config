return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			--pylsp required python3-venv to be installed
			--stylua had to be installed manually
			require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "pylsp" } })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {})
			vim.lsp.config("pylsp", {
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								maxLineLength = 120,
							},
						},
					},
				},
			})
			vim.lsp.config("clangd", {})
		end,
	},
}
