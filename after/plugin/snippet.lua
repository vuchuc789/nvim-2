require('luasnip').filetype_extend('typescript', { 'javascript' })
require('luasnip').filetype_extend('typescriptreact', { 'javascriptreact' })

require('luasnip.loaders.from_vscode').lazy_load()
