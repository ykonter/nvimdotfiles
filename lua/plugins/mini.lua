return {
    -- Text editing goodies
    {
        'echasnovski/mini.ai',
        version = false,
        config = function()
            require('mini.ai').setup()
        end
    },
    {
        'echasnovski/mini.pairs',
        version = false,
        config = function()
            require('mini.pairs').setup()
        end
    },


    -- general workflow
    {
        'echasnovski/mini.bracketed',
        version = false,
        config = function()
            require('mini.bracketed').setup()
        end
    },
    {
        'echasnovski/mini.files',
        version = false,
        config = function()
            require('mini.files').setup()
        end
    },
    {
        'echasnovski/mini.jump2d',
        version = false,
        config = function()
            require('mini.jump2d').setup()
        end
    },

    -- Appearance
    {
        'echasnovski/mini.animate',
        version = false,
        config = function()
            require('mini.animate').setup()
        end
    },
    {
        'echasnovski/mini.indentscope',
        version = false,
        config = function()
            require('mini.indentscope').setup()
        end
    },
    {
        'echasnovski/mini.map',
        version = false,
        config = function()
            require('mini.map').setup()
        end
    },
    {
        'echasnovski/mini.notify',
        version = false,
        config = function()
            require('mini.notify').setup()
        end
    },
    {
        'echasnovski/mini.clue',
        config = function()
            local miniclue = require('mini.clue')
            miniclue.setup({
                triggers = {
                    -- Leader triggers
                    { mode = 'n', keys = '<Leader>' },
                    { mode = 'x', keys = '<Leader>' },

                    -- Built-in completion
                    { mode = 'i', keys = '<C-x>' },

                    -- `g` key
                    { mode = 'n', keys = 'g' },
                    { mode = 'x', keys = 'g' },

                    -- Marks
                    { mode = 'n', keys = "'" },
                    { mode = 'n', keys = '`' },
                    { mode = 'x', keys = "'" },
                    { mode = 'x', keys = '`' },

                    -- Registers
                    { mode = 'n', keys = '"' },
                    { mode = 'x', keys = '"' },
                    { mode = 'i', keys = '<C-r>' },
                    { mode = 'c', keys = '<C-r>' },

                    -- Window commands
                    { mode = 'n', keys = '<C-w>' },

                    -- `z` key
                    { mode = 'n', keys = 'z' },
                    { mode = 'x', keys = 'z' },
                },

                clues = {
                    -- Enhance this by adding descriptions for <Leader> mapping groups
                    miniclue.gen_clues.builtin_completion(),
                    miniclue.gen_clues.g(),
                    miniclue.gen_clues.marks(),
                    miniclue.gen_clues.registers(),
                    miniclue.gen_clues.windows(),
                    miniclue.gen_clues.z(),
                },
            })
        end

    }
}
