return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 200
	end,
	opts = {},
	config = function()
		local wk = require("which-key")

		wk.register({
			["<leader>e"] = "Toggle filetree",
			["<leader>f"] = "Find",
			["<leader>b"] = "Buffers",
			["<leader>c"] = "Code",
			["<leader>g"] = "Git",
			["<leader>h"] = "Harpoon",
		})
	end,
}
