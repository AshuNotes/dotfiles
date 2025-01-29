return {
  "akinsho/bufferline.nvim",
  requires = "nvim-tree/nvim-web-devicons", -- for file icons
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- Can be "buffers" or "tabs"
        numbers = "none", -- Display buffer numbers (options: 'none', 'ordinal', 'both')
        close_command = "bdelete! %d", -- Command to close buffer
        right_mouse_command = "bdelete! %d", -- Right click command
        left_mouse_command = "buffer %d", -- Left click to switch to buffer
        indicator = {
          style = "icon", -- Show an icon indicator for the current buffer
        },
        buffer_close_icon = "", -- Icon for closing a buffer
        modified_icon = "", -- Icon for modified buffers
        close_icon = "", -- Close buffer icon
        left_trunc_marker = "", -- Left truncation marker
        right_trunc_marker = "", -- Right truncation marker
        tab_size = 18, -- Size of each buffer in the bufferline
        diagnostics = "nvim_lsp", -- Show diagnostics (options: 'nvim_lsp', 'coc', 'nvim_diagnostic')
        vim.diagnostic.config { update_in_insert = true },
        offsets = { -- Add a space above bufferline for file explorer
          {
            filetype = "NvimTree", -- For NvimTree explorer
            text = "File Explorer", -- Text to display in the offset
            highlight = "Directory", -- Highlight the text
            text_align = "left", -- Align the text to the left
            padding = 1, -- Space around the offset
          },
        },
        show_buffer_icons = true, -- Show icons in the bufferline
        show_buffer_close_icons = true, -- Show close icons for buffers
        show_close_icon = true, -- Show close icon
        show_tab_indicators = true, -- Show indicators for tabs
        persist_buffer_sort = true, -- Persist buffer order between sessions
        separator_style = "slant", -- Style of separators between buffers
        enforce_regular_tabs = true, -- Whether to enforce regular tabs for all buffers
        always_show_bufferline = true, -- Always show the bufferline, even with a single buffer
      },
    })

    -- Key mappings
    local keymap = vim.keymap

    -- Move to the next/previous buffer
    keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
    keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })

    -- Move to a specific buffer (buffer 1-9)
    for i = 1, 9 do
      keymap.set("n", "<leader>" .. i, ":BufferLineGoToBuffer " .. i .. "<CR>", { desc = "Go to buffer " .. i })
    end

    -- Close the current buffer
    keymap.set("n", "<leader>bx", ":bdelete!<CR>", { desc = "Close current buffer" })

    -- Close all buffers except the current one
    keymap.set(
      "n",
      "<leader>bX",
      ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>",
      { desc = "Close all buffers except current" }
    )
    -- Open the bufferline with a list of all buffers
    keymap.set("n", "<leader>bl", ":BufferLinePick<CR>", { desc = "Pick buffer" })

    -- Toggle the bufferline visibility
    keymap.set("n", "<leader>tp", ":BufferLineToggle<CR>", { desc = "Toggle bufferline" })

    -- closing right and left buffers
    keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseLeft<cr>", { desc = "Close Buffers to the Left" })
    keymap.set("n", "<leader>br", "<cmd>BufferLineCloseRight<cr>", { desc = "Close Buffers to the Right" })

  end,
}
