-- load your globals, autocmds here or anything .__.
-- require("custom.autocmds")

local set = vim.opt
local g = vim.g
local cmd = vim.cmd

-- mapleader needs to be at the top
g.mapleader = "\\"
set.nocompatible=true
set.encoding="utf-8"
set.guifont= { "Liga SFMono Nerd Font", ":h15" }
-- g.autosave = true

--- Enables better colors
cmd([[
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
]])

--- Enables better Italics
cmd('let &t_ZH="\\e[3m"')
cmd('let &t_ZR="\\e[23m"')
-- Use English as default
cmd("language en_US.utf-8")

set.ttyfast=true                    -- Speed up scrolling in Vim
set.t_Co=256                        -- Enable 256 colors in the terminal
set.tabstop=4                       -- number of columns occupied by a tab 
set.softtabstop=4                   -- see multiple spaces as tabstops so <BS> does the right thing
set.shiftwidth=4                    -- width for autoindents
set.numberwidth=4                   -- columns used for the line number
set.autoindent=true                 -- indent a new line the same amount as the line just typed
set.hidden=true                     -- navigate buffers without losing unsaved work
set.showcmd=true                    -- Show partial command you type in the last line of the screen.
set.showmatch=true                  -- Show matching words during a search.
set.incsearch=true                  -- searching though a file incrementally highlight matching characters as you type.
set.hlsearch=true                   -- highlights the matched text pattern when searching
set.wildmode="longest,list,full"    -- get bash-like tab completions
set.history=1000                    -- Set the commands to save in history default number is 20.
set.nobackup=true                   -- Do not save backup files.
set.wildmenu=true                   -- Enable auto completion menu after pressing TAB.
set.noswapfile=true                 -- Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set.lazyredraw=true                 -- Don't redraw while executing macros (good performance config)         

cmd("silent! command! EnableShade lua require('shade').toggle()")
