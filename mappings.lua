-- n, v, i, t = mode names

local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.general = {
  i = {
    -- insert mode leader key overrides keymap
    ["<leader>"] = { ",", "Leader key" },

    -- -- go to  beginning and end
    -- ["<C-b>"] = { "<ESC>^i", "beginning of line" },
    -- ["<C-e>"] = { "<End>", "end of line" },

    -- navigate within insert mode
    ["<C-b>"] = { "<Left>", "Move left" },
    ["<C-n>"] = { "<Down>", "Move down" },
    ["<C-p>"] = { "<Up>", "Move up" },
    ["<C-f>"] = { "<Right>", "Move right" },
    ["<C-a>"] = { "<Home>", "Home" },
    ["<C-e>"] = { "<End>", "End" },
  },

  n = {
    -- close buffers
    ["<leader>x"] = { "<cmd> bd <CR>", "Close buffers" },

    -- toggle
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- lsp text document/hover
    ["<leader>ld"] = { "<cmd> lua vim.lsp.buf.hover() <CR>", "Lsp text document" },

    -- ["<ESC>"] = { "<cmd> noh <CR>", "no highlight" },

    -- read source code
    ["<leader>tt"] = { "<cmd> TagbarToggle <CR>", "Toggle tagbar" },

    -- replace tabs with spaces
    ["<leader>rt"] = { "<cmd> %ret! 2 <CR>", "Replace tabs with spaces" },

    -- save
    ["<C-l>"] = { "<cmd> w <CR>", "Save file" },

    -- quit
    ["<leader>q"] = { "<cmd> wqa! <CR>", "Quit all" },

    -- switch between windows
    ["<C-t>"] = { "<C-w>j", "Window down" },
    ["<C-n>"] = { "<C-w>k", "Window up" },
    ["<C-s>"] = { "<C-w>l", "Window right" },
    -- ["<leader>\\"] = { "<C-w>v", "Create window from right" },
    -- ["<leader>|"] = { "<C-w>s", "Create window from down" },

    -- Resize with arrows
    ["<C-up>"] = { "<cmd> res -5<CR>", "" },
    ["<C-down>"] = { "<cmd> res +5<CR>", "" },
    ["<C-left>"] = { "<cmd> vertical resize+5<CR>", "" },
    ["<C-right>"] = { "<cmd> vertical resize-5<CR>", "" },

    -- -- Copy all
    -- ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },
    --
    -- -- line numbers
    -- ["<leader>n"] = { "<cmd> set nu! <CR>", "toggle line number" },
    -- ["<leader>rn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
    --
    -- -- update nvchad
    -- ["<leader>uu"] = { "<cmd> :NvChadUpdate <CR>", "update nvchad" },
    --
    -- ["<leader>tt"] = {
    --   function()
    --     require("base46").toggle_theme()
    --   end,
    --   "toggle theme",
    -- },
    --
    -- -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
    -- -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
    -- -- empty mode is same as using <cmd> :map
    -- -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
    -- ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    -- ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    -- ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    -- ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    --
    -- -- new buffer
    -- ["<leader>b"] = { "<cmd> enew <CR>", "new buffer" },
  },
  --
  -- t = { ["<C-x>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" } },
  --
  -- v = {
  --   ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  --   ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  -- },
  --
  -- x = {
  --   ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  --   ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  --   -- Don't copy the replaced text after pasting in visual mode
  --   -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
  --   ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', opts = { silent = true } },
  -- },
}

-- M.tabufline = {
--   plugin = true,
--
--   n = {
--     -- cycle through buffers
--     ["<TAB>"] = {
--       function()
--         require("nvchad_ui.tabufline").tabuflineNext()
--       end,
--       "goto next buffer",
--     },
--
--     ["<S-Tab>"] = {
--       function()
--         require("nvchad_ui.tabufline").tabuflinePrev()
--       end,
--       "goto prev buffer",
--     },
--
--     -- pick buffers via numbers
--     ["<Bslash>"] = { "<cmd> TbufPick <CR>", "Pick buffer" },
--
--     -- close buffer + hide terminal buffer
--     ["<leader>x"] = {
--       function()
--         require("nvchad_ui.tabufline").close_buffer()
--       end,
--       "close buffer",
--     },
--   },
-- }
--
-- M.comment = {
--   plugin = true,
--
--   -- toggle comment in both modes
--   n = {
--     ["<leader>/"] = {
--       function()
--         require("Comment.api").toggle.linewise.current()
--       end,
--       "toggle comment",
--     },
--   },
--
--   v = {
--     ["<leader>/"] = {
--       "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
--       "toggle comment",
--     },
--   },
-- }
--
-- M.lspconfig = {
--   plugin = true,
--
--   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
--
--   n = {
--     ["gD"] = {
--       function()
--         vim.lsp.buf.declaration()
--       end,
--       "lsp declaration",
--     },
--
--     ["gd"] = {
--       function()
--         vim.lsp.buf.definition()
--       end,
--       "lsp definition",
--     },
--
--     ["K"] = {
--       function()
--         vim.lsp.buf.hover()
--       end,
--       "lsp hover",
--     },
--
--     ["gi"] = {
--       function()
--         vim.lsp.buf.implementation()
--       end,
--       "lsp implementation",
--     },
--
--     ["<leader>ls"] = {
--       function()
--         vim.lsp.buf.signature_help()
--       end,
--       "lsp signature_help",
--     },
--
--     ["<leader>D"] = {
--       function()
--         vim.lsp.buf.type_definition()
--       end,
--       "lsp definition type",
--     },
--
--     ["<leader>ra"] = {
--       function()
--         require("nvchad_ui.renamer").open()
--       end,
--       "lsp rename",
--     },
--
--     ["<leader>ca"] = {
--       function()
--         vim.lsp.buf.code_action()
--       end,
--       "lsp code_action",
--     },
--
--     ["gr"] = {
--       function()
--         vim.lsp.buf.references()
--       end,
--       "lsp references",
--     },
--
--     ["<leader>f"] = {
--       function()
--         vim.diagnostic.open_float()
--       end,
--       "floating diagnostic",
--     },
--
--     ["[d"] = {
--       function()
--         vim.diagnostic.goto_prev()
--       end,
--       "goto prev",
--     },
--
--     ["d]"] = {
--       function()
--         vim.diagnostic.goto_next()
--       end,
--       "goto_next",
--     },
--
--     ["<leader>q"] = {
--       function()
--         vim.diagnostic.setloclist()
--       end,
--       "diagnostic setloclist",
--     },
--
--     ["<leader>fm"] = {
--       function()
--         vim.lsp.buf.formatting {}
--       end,
--       "lsp formatting",
--     },
--
--     ["<leader>wa"] = {
--       function()
--         vim.lsp.buf.add_workspace_folder()
--       end,
--       "add workspace folder",
--     },
--
--     ["<leader>wr"] = {
--       function()
--         vim.lsp.buf.remove_workspace_folder()
--       end,
--       "remove workspace folder",
--     },
--
--     ["<leader>wl"] = {
--       function()
--         print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--       end,
--       "list workspace folders",
--     },
--   },
-- }
--
-- M.nvimtree = {
--   plugin = true,
--
--   n = {
--     -- toggle
--     ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
--
--     -- focus
--     ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
--   },
-- }
--
-- M.telescope = {
--   plugin = true,
--
--   n = {
--     -- find
--     ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
--     ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
--     ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
--     ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
--     ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "help page" },
--     ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
--     ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
--
--     -- git
--     ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
--     ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git status" },
--
--     -- pick a hidden term
--     ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },
--
--     -- theme switcher
--     ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
--   },
-- }
--
-- M.nvterm = {
--   plugin = true,
--
--   t = {
--     -- toggle in terminal mode
--     ["<A-i>"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "toggle floating term",
--     },
--
--     ["<A-h>"] = {
--       function()
--         require("nvterm.terminal").toggle "horizontal"
--       end,
--       "toggle horizontal term",
--     },
--
--     ["<A-v>"] = {
--       function()
--         require("nvterm.terminal").toggle "vertical"
--       end,
--       "toggle vertical term",
--     },
--   },
--
--   n = {
--     -- toggle in normal mode
--     ["<A-i>"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "toggle floating term",
--     },
--
--     ["<A-h>"] = {
--       function()
--         require("nvterm.terminal").toggle "horizontal"
--       end,
--       "toggle horizontal term",
--     },
--
--     ["<A-v>"] = {
--       function()
--         require("nvterm.terminal").toggle "vertical"
--       end,
--       "toggle vertical term",
--     },
--
--     -- new
--
--     ["<leader>h"] = {
--       function()
--         require("nvterm.terminal").new "horizontal"
--       end,
--       "new horizontal term",
--     },
--
--     ["<leader>v"] = {
--       function()
--         require("nvterm.terminal").new "vertical"
--       end,
--       "new vertical term",
--     },
--   },
-- }
--
-- M.whichkey = {
--   plugin = true,
--
--   n = {
--     ["<leader>wK"] = {
--       function()
--         vim.cmd "WhichKey"
--       end,
--       "which-key all keymaps",
--     },
--     ["<leader>wk"] = {
--       function()
--         local input = vim.fn.input "WhichKey: "
--         vim.cmd("WhichKey " .. input)
--       end,
--       "which-key query lookup",
--     },
--   },
-- }
--
-- M.blankline = {
--   plugin = true,
--
--   n = {
--     ["<leader>cc"] = {
--       function()
--         local ok, start = require("indent_blankline.utils").get_current_context(
--           vim.g.indent_blankline_context_patterns,
--           vim.g.indent_blankline_use_treesitter_scope
--         )
--
--         if ok then
--           vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
--           vim.cmd [[normal! _]]
--         end
--       end,
--
--       "Jump to current_context",
--     },
--   },
-- }

-- h t n s
M.general_normal = {
  n = {
    ["t"] = { "j", "Normal t", opts = {} },
    ["n"] = { "k", "Normal n", opts = {} },
    ["s"] = { "l", "Normal s", opts = {} },
    ["j"] = { "t", "Normal j", opts = {} },
    ["k"] = { "n", "Normal k", opts = {} },
    ["l"] = { "s", "Normal l", opts = {} },
    ["T"] = { "J", "Normal T", opts = {} },
    ["N"] = { "K", "Normal N", opts = {} },
    ["S"] = { "L", "Normal S", opts = {} },
    ["J"] = { "T", "Normal J", opts = {} },
    ["K"] = { "N", "Normal K", opts = {} },
    ["L"] = { "S", "Normal L", opts = {} },
  },
}

M.general_visual = {
  v = {
    ["t"] = { "j", "Visual t", opts = {} },
    ["n"] = { "k", "Visual n", opts = {} },
    ["s"] = { "l", "Visual s", opts = {} },
    ["j"] = { "t", "Visual j", opts = {} },
    ["k"] = { "n", "Visual k", opts = {} },
    ["l"] = { "s", "Visual l", opts = {} },
    ["T"] = { "J", "Visual T", opts = {} },
    ["N"] = { "K", "Visual N", opts = {} },
    ["S"] = { "L", "Visual S", opts = {} },
    ["J"] = { "T", "Visual J", opts = {} },
    ["K"] = { "N", "Visual K", opts = {} },
    ["L"] = { "S", "Visual L", opts = {} },
  },
}

-- In order to disable a default keymap, use
M.disabled = {
  -- v = {
  -- },
  i = {
    ["<C-h>"] = "",
  },
  n = {
    ["<C-s>"] = "",
    -- focus
    ["<leader>e"] = "",
  },
}

return M
