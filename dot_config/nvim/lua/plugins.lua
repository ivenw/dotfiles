local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth',
  'github/copilot.vim',
  { 'folke/which-key.nvim', opts = {} },
  { 'lewis6991/gitsigns.nvim', opts = {} },
  { 'lukas-reineke/indent-blankline.nvim', opts = {} },
  { 'numToStr/Comment.nvim', opts = {} },
  { 'nvim-lualine/lualine.nvim', opts = {} },
  { 'nvim-tree/nvim-tree.lua', opts = {} },
  { 'rose-pine/neovim', name = 'rose-pine', config = function() vim.cmd.colorscheme 'rose-pine' end },
  { 'ggandor/leap.nvim', dependencies = 'tpope/vim-repeat', config = function() require('leap').add_default_mappings() end },
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', opts = {} },
      { 'williamboman/mason-lspconfig.nvim', opts = {} },

      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} },

      { 'folke/neodev.nvim', opts = {} },
    },
  },
}, {})
