return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    require("nvim-treesitter.install").prefer_git = true
    table.insert(opts.ensure_installed, "cpp")
    opts.textobjects = {
      swap = {
        enable = true,
        swap_next = { ["<leader>sa"] = "@parameter.inner" },
        swap_previous = { ["<leader>sA"] = "@parameter.inner" },
      },
    }
  end,
}
