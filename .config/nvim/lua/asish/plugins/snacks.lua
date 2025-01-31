return {
  "folke/snacks.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Snacks relies on Treesitter
  priority = 1000,
  --@type snacks.Config
  opts = {},
  config = function()
    require("snacks").setup({
      highlights = {
        Parentheses = { fg = "#c678dd", bold = true }, -- Customize parentheses color
        Brackets = { fg = "#98c379" }, -- Customize brackets color
        Braces = { fg = "#e5c07b" }, -- Customize braces color
        AngleBrackets = { fg = "#61afef" }, -- Customize angle brackets color
        Symbols = { fg = "#56b6c2" }, -- Customize miscellaneous symbols color
      },
      {
        enable_treesitter = true, -- Enable Treesitter integration
        match_pairs = true, -- Highlight matching pairs
        delay = 50, -- Delay (in ms) for highlighting after cursor movement
      },
    })
  end,
}
