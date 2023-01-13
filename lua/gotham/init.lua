local theme = require("gotham.theme")

local gotham = {}

gotham.setup = function(opts)
    local defaults = {
        transparent = false,
        overrides = {}
    }

    -- setting transparent to true removes the default background
    if opts.transparent then
        opts.overrides.bg = 'NONE'
    end

    opts = vim.tbl_extend('force', opts, defaults)

    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'gotham'

    theme.set_highlights(opts)
    theme.link_highlight()

    for group, val in pairs(opts['overrides']) do
        vim.api.nvim_set_hl(0, group, val)
    end

    gotham.change_style = function(style)
        vim.o.background = style
        vim.cmd([[colorscheme gotham]])
    end
end

return gotham

