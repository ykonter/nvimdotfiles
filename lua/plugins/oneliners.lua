return {
  { -- clipboard with ssh
    'ojroques/vim-oscyank',
  },
  { 'lambdalisue/vim-suda', enabled = true },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  { -- show css colors
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup {}
    end,
  },
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
  {
    'alexghergh/nvim-tmux-navigation',
    opts = {
      disable_when_zoomed = true,
      keybindings = {
        left = '<C-h>',
        down = '<C-j>',
        up = '<C-k>',
        right = '<C-l>',
        last_active = '<C-\\>',
        next = '<C-Space>',
      },
    },
  },
}
