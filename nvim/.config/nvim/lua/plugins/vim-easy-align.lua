
return {
     'junegunn/vim-easy-align' ,
     config = function()
         local map = require('utils').map
         map({"n","x"},"ma","<Plug>(EasyAlign)")
     end
 }
