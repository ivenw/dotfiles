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
  'folke/which-key.nvim',
  'tpope/vim-sleuth',
  'github/copilot.vim',
  { 'lewis6991/gitsigns.nvim', opts = {} },
  { 'lukas-reineke/indent-blankline.nvim', opts = {} },
  { 'numToStr/Comment.nvim', opts = {} },
  { 'rose-pine/neovim', name = 'rose-pine', config = function() vim.cmd.colorscheme 'rose-pine' end },
  { 'ggandor/leap.nvim', dependencies = 'tpope/vim-repeat', config = function() require('leap').add_default_mappings() end },
}, {})
