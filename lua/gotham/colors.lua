-- Gotham colors
local gc = {
    none    = "",
    base0   = "#0c1014",
    base1   = "#11151c",
    base2   = "#091f2e",
    base3   = "#0a3749",
    base4   = "#1e6479",
    base5   = "#599cab",
    base6   = "#99d1ce",
    base7   = "#d3ebe9",
    red     = "#c23127",
    orange  = "#d26937",
    yellow  = "#edb443",
    magenta = "#888ca6",
    violet  = "#4e5166",
    blue    = "#195466",
    cyan    = "#33859E",
    green   = "#2aa889",
}

local colors = {}

colors.get_colors = function()
    return {
        -- Vim
        { "Normal", { fg = gc.base6, bg = gc.base0 } },
        { "Cursor", { fg = gc.base1, bg = gc.base6 } },
        { "CursorLine", { fg = gc.none, bg = gc.base1 } },
        { "CursorColumn", { fg = gc.none, bg = gc.base1 } },
        { "LineNr", { fg = gc.blue, bg = gc.base1 } },
        { "CursorLineNr", { fg = gc.base5, bg = gc.base1 } },
        { "SignColumn", { fg = gc.none, bg = gc.base1 } },
        { "ColorColumn", { fg = gc.none, bg = gc.base1 } },
        { "Visual", { fg = gc.none, bg = gc.base1 } },
        { "Comment", { fg = gc.blue } },
        { "String", { fg = gc.green } },
        { "Number", { fg = gc.orange } },
        { "Statement", { fg = gc.base5 } },
        { "Special", { fg = gc.orange } },
        { "Identifier", { fg = gc.base5 } },
        { "Constant", { fg = gc.magenta } },
        { "Title", { fg = gc.orange } },
        { "Underlined", { fg = gc.yellow } },
        -- TODO: Attrs?
        { "Type", { fg = gc.orange } },
        { "PreProc", { fg = gc.red } },
        { "NonText", { fg = gc.blue, bg = gc.base0 } },
        { "Conceal", { fg = gc.cyan, bg = gc.base0 } },
        { "Todo", { fg = gc.magenta, bg = gc.base1 } },
        { "VertSplit", { fg = gc.blue, bg = gc.base1 } },
        { "StatusLineNC", { fg = gc.blue, bg = gc.base2 } },
        { "MatchParen", { fg = gc.base6, bg = gc.orange } },
        { "SpecialKey", { fg = gc.base3 } },
        --
        { "Folded", { fg = gc.base6, bg = gc.blue } },
        { "FoldColumn", { fg = gc.base5, bg = gc.base3 } },
        --
        { "Search", { fg = gc.base2, bg = gc.yellow } },
        { "IncSearch", { fg = gc.yellow } },
        -- Popup menui
        { "Pmenu", { fg = gc.base6, bg = gc.base2 } },
        { "PmenuSel", { fg = gc.base7, bg = gc.blue } },
        { "PmenuSbar", { fg = gc.none, bg = gc.base2 } },
        { "PmenuThumb", { fg = gc.none, bg = gc.blue } },
        -- CLI
        { "ErrorMsg", { fg = gc.red, bg = gc.base1 } },
        { "Error", { fg = gc.red, bg = gc.base1 } },
        { "ModeMsg", { fg = gc.blue } },
        { "WarningMsg", { fg = gc.red } },
        -- Statusline
        { "StatusLine", { fg = gc.base5, bg = gc.base2 } },
        { "WildMenu", { fg = gc.base7, bg = gc.cyan } },
        -- Prompt
        { "Question", { fg = gc.green } },
        -- Tabline
        { "TabLineSel", { fg = gc.base7, bg = gc.blue } },
        { "TabLine", { fg = gc.base6, bg = gc.base2 } },
        { "TabLineFill", { fg = gc.base0, bg = gc.base0 } },
        -- Spelling
        { "SpellBad", { fg = gc.base7, bg = gc.red } },
        { "SpellCap", { fg = gc.base7, bg = gc.blue } },
        { "SpellLocal", { fg = gc.yellow } },
        { "SpellRare", { fg = gc.base7, bg = gc.violet } },
        -- Diffing
        { "DiffAdd", { fg = gc.base7, bg = gc.green } },
        { "DiffChange", { fg = gc.base7, bg = gc.blue } },
        { "DiffDelete", { fg = gc.base7, bg = gc.red } },
        { "DiffText", { fg = gc.base7, bg = gc.cyan } },
        { "DiffAdded", { fg = gc.green } },
        { "DiffChanged", { fg = gc.blue } },
        { "DiffRemoved", { fg = gc.red } },
        { "DiffSubname", { fg = gc.blue } },
        -- Directories
        { "Directory", { fg = gc.cyan } },

        -- Treesitter
        { "@error", { fg = gc.red } },
        { "@comment", { fg = gc.blue, bg = gc.none, italic = true } },
        { "@punctuation.bracket", { fg = gc.orange } },
        { "@punctuation.special", { fg = gc.orange } },
        { "@function", { fg = gc.orange } },
        { "@keyword.function", { fg = gc.yellow } },
        { "@keyword.operator", { fg = gc.yellow } },

        -- Python
        { "pythonStatement", { fg = gc.blue } },
        { "pythonOperator", { fg = gc.blue } },
        { "pythonException", { fg = gc.magenta } },
        { "pythonExClass", { fg = gc.cyan } },
        { "pythonBoolean", { fg = gc.blue } },
        { "pythonNone", { fg = gc.blue } },
        { "pythonClassVar", { fg = gc.blue } },
        { "pythonClassDef", { fg = gc.cyan } },

        -- Typescript

        -- Markdown

        -- HTML
        { "htmlArg", { fg = gc.blue } },
        { "htmlItalic", { fg = gc.magenta, italic = true } },
        { "htmlBold", { fg = gc.cyan, bold = true } },
        { "htmlBoldItalic", { fg = gc.cyan, bold = true, italic = true } },
    }
end

return colors
