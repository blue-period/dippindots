local utils = require('utils')

-- Key mappings for normal mode
utils.map('n', '<C-l>', '<cmd>noh<CR>')
utils.map('n', '<C-j>', '<C-W>j')
utils.map('n', '<C-k>', '<C-W>k')
utils.map('n', '<C-h>', '<C-W>h')
utils.map('n', '<C-l>', '<C-W>l')
utils.map('n', '<Leader><Leader>', ':noh<CR>')

-- Key mappings for insert mode
utils.map('i', 'jk', '<Esc>')
