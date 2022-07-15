-- make sure you maintain the structure of `core/default_config.lua` here,

local M = {}
local pluginConfigDir = "custom.currentPlugins"
local pluginConfigData = require(pluginConfigDir)

-- leader + uu - update nvchad
-- leader + th - change themes

M.ui = {
   theme = "wombat",
   -- transparency = true,
   statusline = {
      separator_style = "round",
   },
}

-- :PackerSync

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = pluginConfigDir,
      },
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = pluginConfigData.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = pluginConfigData.treesitter,
      ["nvim-telescope/telescope.nvim"] = pluginConfigData.telescope,
      ["hrsh7th/nvim-cmp"] = pluginConfigData.cmp,
   },

   user = require("custom.newPlugins"),

   remove = {
      "goolord/alpha-nvim",
      -- "folke/which-key.nvim",
   },
}

M.mappings = require("custom.keybindings")

return M