return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.colorscheme.sonokai" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim", enabled=true},
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.programming-language-support.web-tools-nvim" },
  -- { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.terminal-integration" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
