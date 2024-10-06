-- Git related plugins
return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            }
        },
    },
    {
        "akinsho/git-conflict.nvim",
        tag = "v1.3.0",
        config = function()
            require("git-conflict").setup({
                default_mappings = {
                    ours = "co",
                    theirs = "ct",
                    none = "c0",
                    both = "cb",
                    next = "cn",
                    prev = "cp",
                },
            })
        end,
    },
    {
        "tpope/vim-fugitive",
        config = function()
            local map = require("helpers.keys").map
            map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
            map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")
        end,
    }
}
