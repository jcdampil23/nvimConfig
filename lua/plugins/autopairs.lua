
-- Enables autoclose of {} [] ()
-- Details
-- https://github.com/windwp/nvim-autopairs

return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    lazy=true,
    opts = {} -- this is equalent to setup({}) function
}
