return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true})
  end,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "angular", "bash", "c", "c_sharp", "cmake", "cpp", "csv",
        "diff", "dockerfile", "gitignore", "go", "helm", "html",
        "java", "javascript", "json", "latex", "lua", "make",
        "python", "regex", "rust", "sql", "ssh_config", "tmux",
        "xml", "yaml" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
