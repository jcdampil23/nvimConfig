
-- Adds colors to status bar
-- currently in material theme and disabled icons
return {
    'nvim-lualine/lualine.nvim',
    config = function ()
        require('lualine').setup({
            options = {
                icons_enabled=false,
                theme = 'material',
            }
        });
    end
}
