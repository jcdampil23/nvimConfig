


-- <leader> is spacebar, change it in config/set.lua
local keymap = vim.keymap.set;

-- Go Back to File Browser with the :Ex Commdand (works on normal netrw)
keymap('n', '<leader>q', ':Ex<CR>');

-- Go Back to last buffer (for us just usually means go back to last file)
keymap("n", "<C-b>", "<CS-O>")

-- Open Lazy Plugin Manager
keymap('n', '<leader>l', ':Lazy<CR>');

-- Jump Up(ctrl+u) an Down(ctrl+d) then Center(zz)
keymap('n', '<C-d>', '<C-d>zz');
keymap('n', '<C-u>', '<C-u>zz');

-- Move Selection Up(K) or Down(J)
keymap('v', 'J', ":m '>+1<CR>gv=gv");
keymap('v', 'K', ":m '<-2<CR>gv=gv");

-- Wrap word with ()(ctrl+0) [](ctrl+]) {}(ctrl+}) ''(ctrl+')
keymap('n', '<C-0>', 'ea)<Esc>bi(<ESC>')
keymap('n', '<C-]>', 'ea]<Esc>bi[<ESC>')
keymap('n', '<C-}>', 'ea}<Esc>bi{<ESC>')
keymap("n", "<C-'>", "ea'<Esc>bi'<Esc>")
keymap("n", "<C-.>", "ea><Esc>bi<<Esc>")

-- Copy Selection to System Clipboard
keymap("v", "<leader>y","\"+y");

-- Copy Vim Motion to System Clipboard
-- ex. (<leader>iw) copy the word under the cursor
-- (<leader>i)) copy whats inside parenthesis (works with ],})
keymap("n", "<leader>y","\"+y");
keymap("n", "<leader>Y","\"+Y");

-- Replace word under cursor in the entire file
keymap("n", "<leader>r", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])

-- Find and replace within selection (you will write the word)
keymap("v", "<leader>r", [[:s///g<left><left><left>]])

-- FzfLua Plugin File finder and Text Finder
keymap('n',"<leader>pf", ":FzfLua files<CR>");
keymap('n',"<leader>ps", ":FzfLua live_grep_native<CR>");
-- keymap("", "<C-i>", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
keymap('n', "<leader>f", ':EslintFixAll<CR>')

-- Open Mason Plugin Window (LSP Installer)
keymap('n','<leader>m', ":Mason<CR>")

-- Close unactive buffers (buffer meaning file) 
keymap("n","<leader>x", ":%bd|e#");

-- View Abstract Syntax Tree (AST)
keymap("n","<leader>pi", ":InspectTree<CR>");
