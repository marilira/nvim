return {
	"xeluxee/competitest.nvim",
	dependencies = "MunifTanjim/nui.nvim",
	config = function()
		require("competitest").setup()

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>cc", "<cmd>Competitest run<cr>", { desc = "Compile and run test cases" })
		keymap.set(
			"n",
			"<leader>cr",
			"<cmd>Competitest receive testcases<cr>",
			{ desc = "Get testcases from extension" }
		)
		keymap.set("n", "<leader>cs", "<cmd>Competitest show_ui<cr>", { desc = "Show previous testcases" })
	end,
}
