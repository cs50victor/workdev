local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd


autocmd("BufWritePre", {
    pattern = "*.tsx,*.ts,*.jsx,*.js",
    command = "EslintFixAll",
})

-- sync open file with NERDTree
-- Check if NERDTree is open or active
cmd([[
    function! IsNERDTreeOpen()        
      return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
    endfunction
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
]])

-- Call NERDTreeFind if NERDTree is active, 
-- current window contains a modifiable file,
-- and we're not in vimdiff
-- Highlight currently open buffer in NERDTree
cmd([[
    function! SyncTree()
      if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
      endif
    endfunction
    
    autocmd BufEnter * call SyncTree()
]])

-- Start NERDTree. If a file is specified, move the cursor to its window.
cmd.("autocmd StdinReadPre * let s:std_in=1")
