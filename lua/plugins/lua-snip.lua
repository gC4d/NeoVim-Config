return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  -- nvim-cmp integration (if using autocompletion)
  {
    "saadparwaiz1/cmp_luasnip",
  },
}

