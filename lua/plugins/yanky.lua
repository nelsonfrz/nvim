return {
	"gbprod/yanky.nvim",
	config = function()
		require("yanky").setup({})
		require("yanky").setup({})

		vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", { desc = "Put after" })
		vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", { desc = "Put before" })
		vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", { desc = "Put after" })
		vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", { desc = "Put before" })
		vim.keymap.set("n", "<leader>fy", ":Telescope yank_history<CR>", { desc = "Yank history" })
		vim.keymap.set("n", "<C-p>", "<Plug>(YankyPreviousEntry)", { desc = "Previous yank" })
		vim.keymap.set("n", "<C-n>", "<Plug>(YankyNextEntry)", { desc = "Next yank" })
	end,
}
