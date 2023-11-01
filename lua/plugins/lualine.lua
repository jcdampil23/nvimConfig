
-- Adds colors to status bar
-- currently in material theme and disabled icons
return {
    'nvim-lualine/lualine.nvim',
    lazy=true,
    event = { "BufReadPre", "BufNewFile" },
    config = function ()
        require('lualine').setup({
            options = {
                icons_enabled=true,
                theme = 'material',
            }
        });
    end
}
