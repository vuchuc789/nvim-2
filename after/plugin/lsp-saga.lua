local saga = require("lspsaga")
-- local action = require("lspsaga.action")

saga.init_lsp_saga({
  code_action_lightbulb = {
    enable = true,
    sign = true,
    enable_in_insert = true,
    sign_priority = 20,
    virtual_text = false,
  },
})

-- scroll down hover doc or scroll in definition preview
-- vim.keymap.set("n", "<C-f>", function()
--   action.smart_scroll_with_saga(1)
-- end, { silent = true })
-- scroll up hover doc
-- vim.keymap.set("n", "<C-b>", function()
--   action.smart_scroll_with_saga(-1)
-- end, { silent = true })
