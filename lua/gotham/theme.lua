local colors = require("gotham.colors")

local theme = {}

theme.set_highlights = function(opts)
    local c = colors.get_colors()
    c = vim.tbl_extend('force', c, opts['overrides'])
    for k, v in pairs(c) do
        vim.api.nvim_set_hl(0, v[1], v[2])
    end

end

theme.link_highlight = function()
end

return theme
