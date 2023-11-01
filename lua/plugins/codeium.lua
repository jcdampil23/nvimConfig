-- Codeium Ai, so AI suggestions
-- :Codeium Auth to start using
-- Details
-- https://github.com/Exafunction/codeium.vim

return {
    "Exafunction/codeium.nvim",
    lazy=true,
    event = 'InsertEnter',
    config = function()
        require("codeium").setup({
        })
    end
}
