local present, truzen = pcall(require, "true-zen")

if not present then
   return
end

local options = {
   ui = {
      top = {
         showtabline = 0,
      },
   },
   modes = {
      ataraxis = {
         left_padding = 5,
         right_padding = 5,
         top_padding = 5,
         bottom_padding = 2.5,
         auto_padding = false,
      },
   },
}

truzen.setup(options)