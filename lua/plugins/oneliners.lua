return { 
    { -- clipboard with ssh
	'ojroques/vim-oscyank',
    },
    { -- git plugin fugitive
	'tpope/vim-fugitive',
    },
    { -- show css colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
} 
