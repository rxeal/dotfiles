return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.completion.spell,
					require("none-ls.diagnostics.eslint"),
				},
			})
			-- Map Ctrl+S to save the file and then format
			vim.keymap.set("n", "<C-s>", function()
				vim.cmd("w") -- Save the file
				vim.lsp.buf.format() -- Format the file
			end, {})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
	},
}
