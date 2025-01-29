-- Leader key configuration
vim.g.mapleader = " "

-- Autoformat
vim.g.autoformat = true

-- Disable deprecation warnings
vim.g.deprecation_warnings = false

-- Markdown indentation settings
vim.g.markdown_recommended_style = 0

-- Netrw settings
vim.cmd("let g:netrw_liststyle = 3")

-- Essential options
local opt = vim.opt

-- Line numbering
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting a new one
opt.smartindent = true -- Insert indents automatically

-- Wrapping
opt.wrap = false -- Disable line wrapping

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- Use case-sensitive search if uppercase letters are present
opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.wildignore:append({ "*/node_modules/*" })
opt.wildignore:append({ "*/venv/*" })

-- Cursor line
opt.cursorline = true -- Highlight the current line

-- Colors and UI
opt.termguicolors = true -- Enable true color support
opt.background = "dark" -- Use dark background for colorschemes
opt.signcolumn = "yes" -- Always show the sign column to prevent text shifting

-- Backspace
opt.backspace = "indent,eol,start" -- Allow backspace over indent, EOL, and insert mode start

-- Clipboard
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

-- Split window behavior
opt.splitright = true -- Vertical splits open to the right
opt.splitbelow = true -- Horizontal splits open below

-- Disable swapfile
opt.swapfile = false -- Turn off swapfile

-- Undo and backup
opt.undofile = true -- Enable persistent undo
opt.undolevels = 10000 -- Maximum undo levels

-- Folding
opt.foldmethod = "indent" -- Use indentation for folding
opt.foldlevel = 99 -- Open all folds by default

-- Scrolling and context
opt.scrolloff = 4 -- Lines of context around the cursor
opt.sidescrolloff = 8 -- Columns of context for horizontal scrolling

-- Miscellaneous
opt.autowrite = true -- Enable auto write
opt.signcolumn = "yes" -- Always show sign column
opt.splitright = true -- Vertical splits to the right
opt.splitbelow = true -- Horizontal splits below
opt.termguicolors = true -- True color support
opt.background = "dark" -- Set background to dark

vim.g.snacks_animate = true
vim.g.lazyvim_picker = "auto"
vim.g.lazyvim_cmp = "auto"
vim.g.ai_cmp = true
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
vim.g.root_lsp_ignore = { "copilot" }
vim.g.trouble_lualine = true

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = "expr"
  opt.foldtext = ""
else
  opt.foldmethod = "indent"
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end

opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup

opt.formatoptions = "jcroqlnt"

opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"

opt.inccommand = "nosplit"

opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

opt.jumpoptions = "view"
opt.laststatus = 3 -- Use global statusline
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.splitkeep = "screen"
opt.timeoutlen = vim.g.vscode and 1000 or 300
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.virtualedit = "block" -- Allow cursor movement in visual block mode
opt.wildmode = "longest:full,full"
opt.winminwidth = 5 -- Minimum window width
