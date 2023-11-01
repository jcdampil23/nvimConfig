
# My Nvim Config
## Base config for beginners to get started
## Getting Started
Install the following
- **Neovim**
- **Ripgrep** (Better grep)
- **Bat** (Better Cat)
- **Fzf** (Fuzzy Finder / File Finder)
- Yarn / Npm (Just for markdown previwer plugin)

Then clone the config with
```
git clone git@github.com:jcdampil23/nvimConfig.git
```

For Windows Users clone it to
`%userprofile%\AppData\Local\nvim`

For Linux/Mac
`~/.config/nvim`

That's it

## Things to note 

`<leader>`
Whenever I write <leader> it refers to the space key (unless you edit the leader key) 

`netrw` This is the builtin vim file browser

`Normal Mode` is the text navigation for vim, this is the default mode, if you are ever unsure what mode you are in press `esc` to get back to Normal Mode

`Insert Mode` will allow you to insert text into the file, Pressing **i | I** will get you here

`Visual Mode` will select the text from where you first entered and moved, Pressing `v` will get you here

`Visual Line Mode` will select the lines from where you first entered and moved, Pressing `shift+v` will get you here

`Visual Block Mode` will select the lines vertically and horizontally from where you first entered and moved, Pressing `ctrl+v` will get you here

`:w` will save the file `:q` will quit neovim back to terminal

## Keymaps
If it doesnt have a + you press it in succession
Keymaps are also case sensitive

`leader q` will return you to netrw

`g b` will go back to the last opened file

`J` will move selected text with visual mode down
`K` will move selected text with visual mode up 

`ctrl+[ 0, ], },']` will wrap the current word with the chosen key

`leader y` will copy a vim motion or selected text to the system clipboard

`leader r` in normal mode will find and replace the word under your cursor for the entire file

`leader r` in visual mode will find and replace whatever you type in the text selection

## Plugin keymaps
### Lazy.nvim
`leader l` will open the lazy plugin manager

### Mason.nvim
`leader m` will open the Mason LSP installer 

### Comment.nvim
`gcc` to comment selection or line

### Treesitter IndentObject
`vai` to select function block
`vii` to select inner function block

### LSPLines
`ctrl+i` to toggle line diagnostics

### Fzf.lua
`leader pf` will open up a file finder with a previwer

`leader ps` will search for a text throughout the project

`arrow down | ctrl+j` will move the selection down in fzf

`arrow up | ctrl+k` will move the selection up in fzf

`ctrl+arrow keys` will move the previewer 

### Harpoon
`leader a` will add a file to harpoon

`leader e` will show you what files are in harpoon

`leader [j, k, l, ;, n]` will jump to the file in harpoon from 1 -5

### LSP Zero
`gd` will jump to definition

`leader d` will format the file

`leader i` will hover the code definition
`leader o` will show the error diagnostic

`shift+space` will show the autocomplete window in insert mode


## How to Edit?
### Keymaps
Go to `./lua/config/remap.lua` the base keymaps are there for you to edit with explanations of what each keymap does 

### Vim options 
Go to `./lua/config/set.lua` the vim options are there for you to edit with explanations of what each option does 

### Plugins
Go to `./lua/plugins` the files there are the plugins if you want to edit them
To add a plugin learn lazy.nvim
