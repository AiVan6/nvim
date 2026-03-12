return {

 { 
    "folke/tokyonight.nvim", 
    lazy = flase, 
    config = function() 
        vim.cmd("colorscheme tokyonight") 
    end, 
 },
 {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
      require("lualine").setup({})
    end,
 },

 {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    event = "BufRead",
    config = function()
      require("gitsigns").setup()
    end,
  },

  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function()
        require("notify")
    end,
  }

 

}
