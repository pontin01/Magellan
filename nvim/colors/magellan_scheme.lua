vim.loader.enable(true)

local palette = {
    bg                  = "none",
    white = "#FFFFFF",
    normal              = "#dddddd",
    comment             = "#888888",
    comment_doc         = "#888888",
    string_doc          = "#888888",

    constant            = "#dddddd",
    constant_builtin    = "#7ee046",
    string              = "#da9efa",
    character           = "#da9efa",
    number              = "#eca53a",
    float               = "#eca53a",
    boolean             = "#7ee046",
    operator            = "#dddddd",

    variable            = "#69e1f6",
    variable_param      = "#69f67e",
    variable_member     = "#97eaf9",
    variable_builtin    = "#c4bbfb",
    function_           = "#faacc8",
    function_builtin    = "#9a8af8",
    function_call       = "#9a8af8",
    function_macro      = "#9a8af8",
    method              = "#dddddd",
    method_call         = "#dddddd",
    constructor         = "#dddddd",

    keyword             = "#f6ff8f",
    keyword_func        = "#f6ff8f",
    keyword_return      = "#f6ff8f",
    keyword_operator    = "#f6ff8f",
    keyword_import      = "#f6ff8f",
    keyword_repeat      = "#f6ff8f",
    keyword_cond        = "#f6ff8f",
    keyword_except      = "#f6ff8f",

    type                = "#d2efff",
    type_builtin        = "#d2efff",
    type_def            = "#d2efff",

    punc_delim          = "#dddddd",
    punc_bracket        = "#dddddd",
    punc_special        = "#dddddd",

    cursor_line_bg      = "#555555",

    todo_fg             = "#dddddd",
    todo_bg             = "#fa4e5f",

    normal_mode_fg      = "#dddddd",
    normal_mode_bg      = "#4f5258",
    insert_mode_fg      = "#dddddd",
    insert_mode_bg      = "#5fffaf",
    visual_mode_fg      = "#dddddd",
    visual_mode_bg      = "#5f5fff",
    replace_mode_fg      = "#dddddd",
    replace_mode_bg      = "#ffff5f",
    command_mode_fg      = "#dddddd",
    command_mode_bg      = "#ff5faf",
}

local set = vim.api.nvim_set_hl

set(0, "Background",            { bg = palette.bg })

------------------------------ #
-- CODE                        #
------------------------------ #

set(0, "Normal",                { fg = palette.normal, bg = palette.bg })

-- comments
set(0, "@comment",                  { fg = palette.comment })
set(0, "@comment.documentation",    { fg = palette.comment_doc, italic = true })
set(0, "@string.documentation",     { fg = palette.string_doc, italic = true })

-- data types
set(0, "@constant",             { fg = palette.constant, underdotted = true })
set(0, "@constant.builtin",     { fg = palette.constant_builtin })
set(0, "@string",               { fg = palette.string })
set(0, "@character",            { fg = palette.character})
set(0, "@number",               { fg = palette.number })
set(0, "@number.float",         { fg = palette.float })
set(0, "@boolean",              { fg = palette.boolean })
set(0, "@operator",             { fg = palette.operator })

-- variables and functions
set(0, "@variable",             { fg = palette.variable })
set(0, "@variable.parameter",   { fg = palette.variable_param })
set(0, "@variable.member",      { fg = palette.variable_member, italic = true, underdotted = true })
set(0, "@variable.builtin",     { fg = palette.variable_builtin })
set(0, "@function",             { fg = palette.function_ })
set(0, "@function.builtin",     { fg = palette.function_builtin })
set(0, "@function.call",        { fg = palette.function_call, underdashed = true })
set(0, "@function.macro",       { fg = palette.function_macro })
set(0, "@method",               { fg = palette.method })
set(0, "@method.call",          { fg = palette.method_call })
set(0, "@constructor",          { fg = palette.constructor, underdashed = false })

-- keywords
set(0, "@keyword",              { fg = palette.keyword })
set(0, "@keyword.function",     { fg = palette.keyword_func })
set(0, "@keyword.return",       { fg = palette.keyword_return, italic = true })
set(0, "@keyword.operator",     { fg = palette.keyword_operator })
set(0, "@keyword.import",       { fg = palette.keyword_import })
set(0, "@keyword.repeat",       { fg = palette.keyword_repeat })
set(0, "@keyword.conditional",  { fg = palette.keyword_cond })
set(0, "@keyword.exception",    { fg = palette.keyword_except })

-- types
set(0, "@type",                 { fg = palette.type, italic = true })
set(0, "@type.builtin",         { fg = palette.type_builtin })
set(0, "@type.definition",      { fg = palette.type_def })

-- punctuation
set(0, "@punctuation.delimiter",    { fg = palette.punc_delim })
set(0, "@punctuation.bracket",      { fg = palette.punc_bracket })
set(0, "@punctuation.special",      { fg = palette.punc_special })



------------------------------ #
-- OTHER                       #
------------------------------ #

-- statusline mode
set(0, "NormalMode",            { fg = palette.normal_mode_fg, bg = palette.normal_mode_bg })
set(0, "InsertMode",            { fg = palette.insert_mode_fg, bg = palette.insert_mode_bg })
set(0, "VisualMode",            { fg = palette.visual_mode_bg, bg = palette.visual_mode_bg })
set(0, "ReplaceMode",           { fg = palette.replace_mode_fg, bg = palette.replace_mode_bg })
set(0, "CommandMode",           { fg = palette.command_mode_fg, bg = palette.command_mode_bg })






set(0, "Type",              { fg = palette.white })
set(0, "StorageClass",      { fg = palette.white })
set(0, "Structure",         { fg = palette.white })
set(0, "Typedef",           { fg = palette.white })

set(0, "Special",           { fg = palette.white })
set(0, "SpecialChar",       { fg = palette.white })
set(0, "Tag",               { fg = palette.white })
set(0, "Delimiter",         { fg = palette.white })
set(0, "SpecialComment",    { fg = palette.white })
set(0, "Debug",             { fg = palette.white })

set(0, "Underlined",        { fg = palette.white })
set(0, "Ignore",            { fg = palette.white })
set(0, "Error",             { fg = palette.white })
set(0, "TodoBgTODO",        { fg = palette.todo_fg, bg = palette.todo_bg })
set(0, "TodoFgTODO",        { fg = palette.todo_bg })

set(0, "CursorLine",        { bg = palette.cursor_line_bg })
set(0, "CursorColumn",      { fg = palette.white })
set(0, "ColorColumn",       { fg = palette.white })
set(0, "Conceal",           { fg = palette.white })

set(0, "Cursor",            { fg = palette.white })
set(0, "lCursor",           { fg = palette.white })
set(0, "TermCursor",        { fg = palette.white })
set(0, "TermCursorNC",      { fg = palette.white })
