
return {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    lazy=true,
    event = { "BufReadPre", "BufNewFile" },
    config=function ()
        require('lsp_lines').setup();
    end,
	keys = {
		{ "<C-i>", "<cmd>lua require('lsp_lines').toggle()<cr>", desc = "Toggle LSP Lines" },
    }
}
