return {
    'nvim-tree/nvim-web-devicons',
    config = function()
        require('nvim-web-devicons').setup {
            default = true;
            color_icons = true;
            strict = true;
            override_by_extension = {
                ["m"] = {
                    icon = "󰘨",
                    color = "#3e8fb0",
                    name = "Matlab"
                }
            };
        }
    end
}
