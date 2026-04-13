local utils = require('utils')

-- Basic settings
vim.cmd 'syntax enable'
vim.cmd 'filetype plugin indent on'

-- Buffer local options
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', 4)
utils.opt('b', 'smartindent', false)
utils.opt('b', 'tabstop', 4)

-- Global options
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'clipboard', 'unnamed,unnamedplus')

-- Window local options
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)

-- Highlighting on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
