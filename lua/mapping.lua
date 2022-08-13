vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })
vim.keymap.set('i', 'kj', '<Esc>', { noremap = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

vim.keymap.set('v', '>', '>gv', { noremap = true })
vim.keymap.set('v', '<', '<gv', { noremap = true })

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<space>a", "<cmd>Trouble workspace_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<space>q", "<cmd>Trouble document_diagnostics<cr>",
  { silent = true, noremap = true }
)
-- Currently not working
-- vim.keymap.set("n", "gd", "<cmd>Trouble lsp_definition<cr>",
--   { silent = true, noremap = true }
-- )
vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "gi", "<cmd>Trouble lsp_implementations<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "gt", "<cmd>Trouble lsp_type_definitions<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<space>a", "<cmd>Trouble workspace_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<space>q", "<cmd>Trouble document_diagnostics<cr>",
  { silent = true, noremap = true }
)

vim.keymap.set("n", "<space>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<space>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

vim.keymap.set("n", "<space>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
-- close rename win use <C-c> in insert mode or `q` in normal mode or `:q`

vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
