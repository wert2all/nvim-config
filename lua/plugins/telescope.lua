return {
   'nvim-telescope/telescope.nvim',
   cmd = "Telescope",
   version = false,
   lazy = false,
   dependencies = { 
    'nvim-lua/plenary.nvim', 
    'nvim-tree/nvim-web-devicons', 
    {"nvim-telescope/telescope-fzf-native.nvim", build="make"},
    "nvim-telescope/telescope-ui-select.nvim",
 }
}
