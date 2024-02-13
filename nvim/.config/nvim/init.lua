-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- would really like to localize this to a project folder
vim.filetype.add({
  extension = {
    keymap = "dts",
    overlay = "dts",
  },
})
