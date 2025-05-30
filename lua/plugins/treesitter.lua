return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "elixir",
                "heex",
                "javascript",
                "java",
                "html",
                "cmake",
                "cpp",
                "css",
                "gitignore",
                "json",
                "python",
                "regex",
                "tsx",
                "typescript",
                "xml",
            },
            sync_install = false,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    end


} 
