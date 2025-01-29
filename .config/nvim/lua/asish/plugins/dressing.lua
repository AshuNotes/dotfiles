return {
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {
      input = {
        enabled = true,
        default_prompt = "➤ ",
        prompt_align = "center",
        insert_only = true,
        start_in_insert = true,
        border = "rounded",
        win_options = {
          winblend = 10,
          winhighlight = "Normal:Normal,NormalNC:Normal",
        },
        mappings = {
          n = {
            ["q"] = "Close",
          },
          i = {
            ["<C-c>"] = "Close",
            ["<Esc>"] = "Close",
          },
        },
      },
      select = {
        enabled = true,
        backend = { "builtin", "telescope", "fzf_lua", "fzf" }, -- Remove "nui" from backend list
        builtin = {
          border = "rounded",
          win_options = {
            winblend = 10,
            winhighlight = "Normal:Normal,NormalNC:Normal",
          },
        },
      },
    },
  },
}
