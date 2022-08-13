require("nvim-tree").setup({
  hijack_cursor = true,
  view = {
    adaptive_size = true,
    centralize_selection = true,
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },
})
