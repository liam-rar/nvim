return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter'}, -- if you use the mini.nvim suite
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        code = { style = 'language' },
        indent = {
            enabled = false,
            render_modes = false,
            per_level = 2,
            skip_level = 1,
            skip_heading = false,
            icon = '▎',
            highlight = 'RenderMarkdownIndent',
        },
        checkbox = {
            unchecked = { icon = '✘ ' },
            checked = { icon = '✔ ' },
            custom = { todo = { rendered = '◯ ' } },
        },
        link = { enabled = false },
    },
}
