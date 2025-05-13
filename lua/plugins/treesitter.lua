return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true },
            ensure_installed = { "lua", "markdown", "python", "markdown_inline", "latex", "html" },
            sync_install = false,
            auto_install = true,
        })
        require("vim.treesitter.language").register("markdown", "telekasten")
    end
}
