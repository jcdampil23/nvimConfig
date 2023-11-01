
-- Literally just git blame on the line
return {
    'f-person/git-blame.nvim',
    lazy=true,
    event = { "BufReadPre", "BufNewFile" },
}
