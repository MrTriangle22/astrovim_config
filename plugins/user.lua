return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
      vim.g.mkdp_open_to_the_world = 1
      vim.g.mkdp_open_ip = "127.0.0.1"
      vim.g.mkdp_port = 8080
      vim.g.mkdp_browser = "none"
      vim.g.mkdp_echo_preview_url = 1
    end,
  },
}
