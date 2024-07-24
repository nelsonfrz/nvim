return {
	"lewis6991/gitsigns.nvim",
  config = function ()
    require("gitsigns").setup({})

    vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "Toggle git blame " })
    vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Toggle git diff" })
    vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
  end
}
