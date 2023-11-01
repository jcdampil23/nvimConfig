
-- blazing fast directory and file finder
-- <leader>ps Search Text with ripgrep <leader>pf Find file with fd
-- Details
-- https://github.com/ibhagwan/fzf-lua

return {
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require('fzf-lua');
        fzf.setup({
            fzf_opts = {
                ['--layout'] = 'reverse-list'
            },
            files = {
                git_icons = false,
                file_icons = false,
            },
            keynap = {
                builtin = {
                    ["<down>"] = "toggle-page-down"
                }
            }
        })
    end
}
