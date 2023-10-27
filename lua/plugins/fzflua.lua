
-- blazing fast directory and file finder
return {
    "ibhagwan/fzf-lua",
    lazy=false,
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
        })
    end
}
