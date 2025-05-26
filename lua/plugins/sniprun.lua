return {
  'michaelb/sniprun',
  build = 'sh install.sh 1', -- not really working, build manually
  config = function()
    require('sniprun').setup {
      selected_interpreters = { 'Python3_fifo' },
      repl_enable = { 'Python3_fifo' },
      interpreter_options = {
        Python3_fifo = {
          venv = { '.venv' },
        },
      },
      display = {
        -- 'Classic', --# display results in the command-line  area
        'VirtualTextOk', --# display ok results as virtual text (multiline is shortened)
        'VirtualText', --# display results as virtual text
        -- 'VirtualLine', --# display results as virtual lines
        -- "TempFloatingWindow",      --# display results in a floating window
        'LongTempFloatingWindow', --# same as above, but only long results. To use with VirtualText[Ok/Err]
        -- "Terminal",                --# display results in a vertical split
        -- "TerminalWithCode",        --# display results and code history in a vertical split
        -- 'NvimNotify', --# display with the nvim-notify plugin
        -- "Api"                      --# return output to a programming interface
      },
      live_display = { 'VirtualText", "TerminalOK' },
      show_no_output = {
        'Classic',
      },
      live_mode_toggle = 'on',
    }
  end,
  keys = {
    { '<leader>r', '<Plug>SnipRun', desc = '[R]un code', mode = { 'n', 'v' } },
    { '<leader>v', '<Plug>SnipRunOperator', desc = '[R]un code', mode = { 'n' } },
  },
}
