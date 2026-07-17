local source = debug.getinfo(1, "S").source
local config_dir = vim.fn.fnamemodify(source:sub(1, 1) == "@" and source:sub(2) or source, ":p:h")

local pos_file = vim.env.CMDLINE_POS_FILE

if pos_file and pos_file ~= "" then
  vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
      local col = vim.fn.col(".") - 1  -- bash READLINE_POINT is zero-based
      vim.fn.writefile({ tostring(col) }, pos_file)
    end,
  })
end

vim.opt.runtimepath:prepend(config_dir)

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme gotham")


