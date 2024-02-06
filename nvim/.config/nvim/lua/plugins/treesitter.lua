return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "rust")
      table.insert(opts.ensure_installed, "devicetree")
      table.insert(opts.ensure_installed, "go")
    end,
  },
}
