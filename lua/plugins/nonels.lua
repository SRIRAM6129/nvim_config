return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				--formatters
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.google_java_format,
				--diagnostics

				null_ls.builtins.completion.spell,
				--        require("none-ls.diagnostics.eslint"),
			},
		})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
