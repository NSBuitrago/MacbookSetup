-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
local o = vim.o
local wo = vim.wo

-- Set highlight on search
o.hlsearch = false

-- Make line numbers default
wo.number = true
o.relativenumber = true

-- Enable mouse mode
o.mouse = "a"

-- Sync clipboard between OS and Neovim
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
o.clipboard = "unnamedplus"

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Keep signcolumn on by default
wo.signcolumn = "yes"

-- Use color column
o.colorcolumn = "80"

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"

-- Preview substitutions live, as you type!
o.inccommand = "split"

-- Show which line your cursor is on
o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
o.scrolloff = 10

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true

o.showmode = false
