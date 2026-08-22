return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "jackplus-xyz/binary.nvim",
    },
    {
        "y9san9/y9nika.nvim",
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "y9nika",
        },
    },
}
