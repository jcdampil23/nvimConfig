
-- Fast File Switching with ctrl+(j|k|l|;|n),
-- Show currently added files with <leader>e
-- Add file to harpoon with <leader>
return {
	"ThePrimeagen/harpoon",
    lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
    event = { "BufReadPre", "BufNewFile" },
	config = true,
	keys = {
		{ "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
		{ "<leader>e", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
		{ "<C-j>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Mark 1" },
		{ "<C-k>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Mark 2" },
		{ "<C-l>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Mark 3" },
		{ "<C-;>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Mark 4" },
		{ "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "Mark 5" },
	},
}

