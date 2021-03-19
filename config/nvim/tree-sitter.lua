require'nvim-treesitter.configs'.setup {
    highlight = { enable = true, },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "SS",
            node_incremental = "sn",
            scope_incremental = "sN",
            node_decremental = "sm",
        },
    },
    refactor = {
        highlight_current_scope = { enable = true },
        highlight_definitions = { enable = false },
    },
    textobjects = {
        select = {
            enable = true,
                keymaps = {
                    ["ac"] = "@call.outer",
                    ["ic"] = "@call.inner",
                },
            },
        swap = {
            enable = true,
            swap_next = { ["<leader>s"] = "@parameter.inner", },
            swap_previous = { ["<leader>S"] = "@parameter.inner", },
        },
    },
}
