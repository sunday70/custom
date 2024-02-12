-------------------------------------------------------------------------------
--                  Copyright (C) 2023 ticktech
--
--       filename: init.lua
--    description: init configuration for nvchad
--        created: 2023/06/24
--         author: ticktech
--
-------------------------------------------------------------------------------
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd

--------------------
-- base options
--------------------
-- vim.scriptencoding = "utf-8"
-- opt.encoding = "utf-8"
-- opt.fileencoding = "utf-8"
opt.wrap = false          -- no Wrap lines
-- opt.guicursor = ""
opt.relativenumber = true -- set relative line number
opt.mouse = "a"           -- mouse nil/"a"
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.ignorecase = true
opt.whichwrap = "<,>"

g.mapleader = ","

g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"

-- netrw
g.netrw_banner = 0

-- goto last postion
cmd [[au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif]]

-- toggle quickfix window borrowed from lvim
cmd [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]]

autocmd("FileType", {
  -- pattern = { "vue", "typescript", "javascript", "html", "css", "c", "cpp", "lua", "sh", "go" },
  pattern = { "c", "cpp", "lua", "sh", "go" }, -- 自动格式化代码
  callback = function()
    autocmd("BufWritePre", {
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
})

-- Do not open Netrw at startup, we only need Netrw for the 'gx' shortcut to still work
cmd [[autocmd VimEnter * silent! au! FileExplorer *]]

-------------------------------------------------------------------------------
