-- nvim does not create the undodir persistence directory
-- so we must do it
if vim.fn.has("persistent_undo") == 1 then
   local target_path = vim.o.undodir

   -- create the directory and any parent directories
   -- if the location does not exist
   if vim.fn.isdirectory(target_path) ~= 1 then
       -- 448 base 10 is 0700 octal
       vim.fn.mkdir(target_path, "p", 448)
   end
end


require('plugins')
require('config.set')
require('config.map')
require('config.tidy')
require('config.filetype')
require('config.airline')
