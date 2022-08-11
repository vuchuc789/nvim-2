local null_ls = require("null-ls")
local command_resolver = require("null-ls.helpers.command_resolver")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local dynamic_command = function(params)
  return command_resolver.from_node_modules(params)
      or command_resolver.from_yarn_pnp(params)
      or vim.fn.executable(params.command) == 1 and params.command
end

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        -- vim.lsp.buf.formatting_sync()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

-- register any number of sources simultaneously
local sources = {
  null_ls.builtins.diagnostics.eslint.with({
    dynamic_command = dynamic_command,
    diagnostics_format = "[Eslint] [#{c}] #{m} (#{s})"
  }),
  null_ls.builtins.formatting.prettier.with({
    dynamic_command = dynamic_command,
  }),
}

null_ls.setup({
  on_attach = on_attach,
  sources = sources
})
