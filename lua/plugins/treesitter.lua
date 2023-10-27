
-- Code Highlighter
return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'windwp/nvim-ts-autotag',
	},
	build = ':TSUpdate',
	config = function()
		require("nvim-treesitter.configs").setup {
			autotag = {enable=true},
			ensure_installed = {'javascript','typescript','lua','vim','vimdoc','query'},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable=true,
				additional_vim_regex_highlighting=false,
			},
		}
	end
}
