return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",      -- adapts to terminal/colorscheme
          icons_enabled = true,
          section_separators = '',
          component_separators = '',
        },
      })
    end,
  },
}

