-- overriding default plugin configs!

local M = {}

-- :TSInstallInfo Command to view supported languages
M.treesitter = {
   ensure_installed = {
    "bash", 
    "c",
    "cpp", 
    "dockerfile",
    "go", 
    "gomod", 
    "html", 
    "javascript", 
    "json", 
    "lua",
    "python", 
    "rust", 
    "solidity", 
    "tsx", 
    "typescript", 
    "vim"
   },
   -- Enable code highlighting
   highlight = {
    enable = true,
    disable = {},
   },
   -- Enable based on Treesitter Code formatting for (=) . NOTE: This is an experimental feature.
   indent = {
      enable = true,
      disable = {},
   },
   autotag = {
      enable = true,
   }
}

M.nvimtree = {
   git = {
      enable = true,
   },
   renderer = {
      highlight_git = true,
      group_empty = true,
   },
   view = {
      side = "right",
      width = 20,
   },
   actions = {
      open_file = {
          resize_window = true
      }
  },
}

M.telescope = {
   defaults = {
      color_devicons = false,
      prompt_prefix = "$ ",
      file_ignore_patterns = { "^.git/" },
   },
   extensions = {
      -- fd is needed
      media_files = {
         filetypes = { "png", "webp", "jpg", "jpeg", "pdf"},
      },
   },
}

M.cmp = {
   sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
   },
}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require("lspconfig")

   local servers = { 
                     "html", "cssls", "bashls", "dockerls", "eslint_d",
                     "gopls", "grammarly", "graphql", "vimls",
                     "sqls", "solc", "rust_analyzer",
                     "jsonls", "pyright","emmet_ls", "tsserver", "clangd"
                  }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = function(client, bufnr)
            attach(client, bufnr)
            -- change gopls server capabilities
            if lsp == "gopls" then
               client.server_capabilities.document_formatting = true
               client.server_capabilities.document_range_formatting = true
            elseif lsp == "jsonls" then
               capabilities.textDocument.completion.completionItem.snippetSupport = true
            end
         end,
         capabilities = capabilities,
      }
   end
end

return M

-- https://phelipetls.github.io/posts/configuring-eslint-to-work-with-neovim-lsp/