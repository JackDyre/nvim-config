return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		vim.keymap.set("n", "ha", ':lua require("harpoon.mark").add_file()<CR>', {})
		vim.keymap.set("n", "hm", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
		vim.keymap.set("n", "hp", ':lua require("harpoon.ui").nav_prev()<CR>', {})
		vim.keymap.set("n", "hn", ':lua require("harpoon.ui").nav_next()<CR>', {})
	end,
}
