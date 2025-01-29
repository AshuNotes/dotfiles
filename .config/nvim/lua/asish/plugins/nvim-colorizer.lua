return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    -- Setup the Colorizer with custom options
    require("colorizer").setup({
      "*", -- Enable for all filetypes by default
      css = { names = true }, -- Enable color names only for .css files
      html = { mode = "background" }, -- Set mode for .html files
      tsx = { mode = "background" }, -- Ensure .tsx files work
      jsx = { mode = "background" }, -- Ensure .jsx files work
    }, {
      mode = "background", -- Default display mode is set to background
    })

    -- Keymap to toggle Colorizer highlighting
    vim.keymap.set("n", "<leader>hl", ":ColorizerToggle<CR>", { desc = "Toggle Colorizer" })

    -- Optionally, attach to buffers dynamically for better performance
    vim.cmd([[
      augroup ColorizerAttach
        autocmd!
        autocmd BufWritePost * ColorizerAttachToBuffer
      augroup END
    ]])
  end,
}
