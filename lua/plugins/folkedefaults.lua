return {
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically,
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    {},
  },
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      notifier = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
    keys = {
      { '<leader>d', '<cmd>:lua Snacks.notifier.show_history()<cr>', desc = '[D]ebug Lazy issues' },
    },
  },
}
