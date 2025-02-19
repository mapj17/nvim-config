return {
    --[[ 'navarasu/onedark.nvim',
    name = "onedark",
    priority = 1000,
    config = function()
    require('onedark').setup({
        style = 'deep'
    })
    require('onedark').load()
    end --]]
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme cyberdream")
        end,
    },
}
