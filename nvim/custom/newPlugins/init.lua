-- add/install new plugins to NVCHAD template
return {

    ["windwp/nvim-ts-autotag"] = {
       ft = { "html", "javascriptreact" },
       after = "nvim-treesitter",
       config = function()
          local present, autotag = pcall(require, "nvim-ts-autotag")
          if present then
             autotag.setup()
          end
       end,
    },
    
    ["sheerun/vim-polyglot"] = {},
    ["findango/vim-mdx"] = {},
 
    ["Pocco81/TrueZen.nvim"] = {
       cmd = {
          "TZAtaraxis",
          "TZMinimalist",
          "TZFocus",
       },
       config = function()
          require("custom.newPlugins.truezen")
       end,
    },
 
    ["nvim-treesitter/playground"] = {
       cmd = "TSCaptureUnderCursor",
       config = function()
          require("nvim-treesitter.configs").setup()
       end,
    },
 
    ["andreadev-it/shade.nvim"] = {
       module = "shade",
       config = function()
          require("shade").setup {
             overlay_opacity = 50,
             opacity_step = 1,
             exclude_filetypes = { "NvimTree" },
          }
       end,
    },
 }