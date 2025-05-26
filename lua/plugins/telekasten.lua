return {
  {
    'nvim-telekasten/telekasten.nvim',
    dependencies = { 'nvim-telekasten/calendar-vim', 'nvim-telescope/telescope.nvim' }, -- also require telescope
    config = function()
      local HOME = vim.fn.expand '~/notes'
      require('telekasten').setup {
        home = HOME,
        template_new_daily = vim.fn.expand '~/notes/templates/daily.md',
        template_new_note = 'templates/default.md',
        journal_auto_open = true,
        templates = 'templates',
        dailies = 'daily',
        weeklies = 'weekly',
        filename_small_case = true,
        filename_space_subst = '-',
      }

      -- keybindings for telekasten
      -- Launch panel if nothing is typed after <leader>z
      -- vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

      -- Most used functions
      vim.keymap.set('n', '<leader>zf', '<cmd>Telekasten find_notes<CR>', { desc = 'find notes' })
      vim.keymap.set('n', '<leader>zg', '<cmd>Telekasten search_notes<CR>', { desc = 'search notes' })
      vim.keymap.set('n', '<leader>zd', '<cmd>Telekasten goto_today<CR>', { desc = 'daily note' })
      vim.keymap.set('n', '<leader>zz', '<cmd>Telekasten follow_link<CR>', { desc = 'follow link' })
      vim.keymap.set('n', '<leader>zn', '<cmd>Telekasten new_note<CR>', { desc = 'new note' })
      vim.keymap.set('n', '<leader>zc', '<cmd>Telekasten show_calendar<CR>', { desc = 'show calendar' })
      vim.keymap.set('n', '<leader>zb', '<cmd>Telekasten show_backlinks<CR>', { desc = 'show backlings' })
      vim.keymap.set('n', '<leader>zI', '<cmd>Telekasten insert_img_link<CR>', { desc = 'insert image link' })
      vim.keymap.set('n', '<leader>zp', '<cmd>Telekasten panel<CR>', { desc = 'open panel' })
      vim.keymap.set('n', '<leader>zt', '<cmd>Telekasten toggle_todo<CR>', { desc = 'toggle todo' })

      local todosearcher = function()
        local sstring = '- \\[ \\]'
        require('telescope.builtin').grep_string {
          cwd = HOME,
          use_regex = true,
          search = sstring,
          disable_coordinates = true,
        }
      end
      vim.keymap.set('n', '<leader>zl', todosearcher, { desc = 'find todos quickly in notes folder' })

      -- Call insert link automatically when we start typing a link
      vim.keymap.set('i', '[[', '<cmd>Telekasten insert_link<CR>')
    end,
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    config = function()
      require('render-markdown').setup {
        completions = { lsp = { enabled = true } },
      }
    end,
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
