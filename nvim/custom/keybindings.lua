-- nvim-treesitter Code formatting

-- Defaults are defined in core.mappings

local M = {}

M.nvimtree = {
   n = {
      ["<leader>ff"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
      ["<C-n>"] = { "<cmd> Telescope <CR>", "open telescope" },
   },
}

M.truzen = {
   n = {
      ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
      ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
      ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
   },
}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.shade = {
   n = {
      ["<leader>s"] = {
         function()
            require("shade").toggle()
         end,

         "   toggle shade.nvim",
      },
   },
}

M.general={
   n = {
      ["<leader>w"] = { "<cmd> update <CR>", "﬚  Save and quit" },
      ["<leader>q"] = { "<cmd> x <CR>", "﬚   Saves the file if modified and quit" },
      ["<leader>Q"] = { "<cmd> qa <CR>", "Quit all opened buffers" },
   },
   i = {
      ["<leader>i"] = { "<esc>", "leave insert mode easily" },
   },
}

return M


-- nnoremap <A-j> :m .+1<CR>==
-- nnoremap <A-k> :m .-2<CR>==
-- vnoremap <A-j> :m '>+1<CR>gv=gv
-- vnoremap <A-k> :m '<-2<CR>gv=gv
-- nnoremap <A-C-j> yyp
-- nnoremap <A-C-k> yyP

-- " --- Remaps

-- nnoremap <leader>h :wincmd h<Cr>
-- nnoremap <leader>j :wincmd j<Cr>
-- nnoremap <leader>k :wincmd k<Cr>
-- nnoremap <leader>l :wincmd l<Cr>
-- nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
-- nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
-- nnoremap <silent><leader>q :bdelete<Cr>

