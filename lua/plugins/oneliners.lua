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
    'jpalardy/vim-slime',
    enabled = true,
    init = function()
      vim.g.slime_target = 'tmux'
    end,
    config = function()
      vim.g.slime_default_config = { socket_name = 'default', target_pane = { '1.1' } }
      vim.g.slime_dont_ask_default = 1
      vim.g.slime_paste_file = '$HOME/.slime_paste'
      vim.g.slime_cell_delimiter = '#=='
    end,
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
