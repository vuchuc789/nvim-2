vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Indent
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 2

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- Performance
vim.opt.lazyredraw = true

-- Text Rendering
vim.cmd('syntax on')
vim.opt.display:append({ 'lastline' })
vim.opt.scrolloff = 1
vim.opt.sidescrolloff = 5
vim.opt.wrap = false

-- User Interface
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.errorbells = false
vim.opt.visualbell = true
vim.opt.mouse = 'a'
vim.opt.title = true
vim.opt.signcolumn = 'number'
vim.opt.tabpagemax = 50

-- Clipboard
vim.opt.clipboard:append({ 'unnamedplus' })

-- Other Options
vim.opt.autoread = true
vim.opt.backup = false
vim.opt.confirm = true
vim.opt.hidden = true
vim.opt.history = 1000
vim.opt.modeline = false
-- vim.opt.shortmess:append({ 'c' })
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.cmdheight = 1
-- vim.opt.formatoptions:append({ 'r' })
vim.opt.shell = 'zsh'
vim.opt.showcmd = true
