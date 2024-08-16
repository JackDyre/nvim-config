local args = function(params)
	return {
		"-m",
		"mypy",
		"--hide-error-codes",
		"--hide-error-context",
		"--no-color-output",
		"--show-absolute-path",
		"--show-column-numbers",
		"--show-error-codes",
		"--no-error-summary",
		"--no-pretty",
		"--shadow-file",
		params.bufname,
		params.temp_path,
		params.bufname,
	}
end

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local sources = {
			formatting.stylua,
			diagnostics.mypy.with({
				command = "python",
				args = args,
			}),
		}
		null_ls.setup({
			sources = sources,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
