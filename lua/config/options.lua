-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local g = vim.g

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
-- This is used by the prettier extras (:LazyExtras)
g.lazyvim_prettier_needs_config = true

-- Set to false to disable auto format
-- This is used by the prettier extras (:LazyExtras)
g.lazyvim_eslint_auto_format = true

-- Only highlight the line number of the cursor position.
opt.cursorline = true
opt.cursorlineopt = "both" -- line, number, both
