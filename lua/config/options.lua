vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.inccommand = 'split'
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.confirm = true

-- code folding settings
-- vim.opt.foldmethod = "expr" -- use an expression as input for folding
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter input for folding
-- vim.opt.foldcolumn = "0" -- no extra room for fold
-- vim.opt.foldtext = "" -- no unhighlighted text/first line of fold
-- vim.opt.foldlevel = 0 -- no folding at all by default, consider making this 2
-- vim.opt.foldlevelstart = 0 -- fold level 1 is open, after that is closed
-- vim.opt.foldnestmax = 10 -- nested folds, leave at 1 to see if it stacks?

-- alternative from (https://www.reddit.com/r/neovim/comments/16xz3q9/treesitter_highlighted_folds_are_now_in_neovim/)
-- vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"

-- highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
