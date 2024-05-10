return {
  {
  "windwp/nvim-ts-autotag",
  ft = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "html",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
},
{
  "Pocco81/auto-save.nvim",
  event = "VeryLazy",
  config = function()
    require("auto-save").setup {
      enabled = true,
    }
  end,
},
}