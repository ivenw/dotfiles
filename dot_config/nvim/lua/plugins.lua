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
  { 'folke/which-key.nvim',                opts = {} },
  { 'lewis6991/gitsigns.nvim',             opts = {} },
  { 'lukas-reineke/indent-blankline.nvim', opts = {} },
  { 'numToStr/Comment.nvim',               opts = {} },
  { 'nvim-lualine/lualine.nvim',           opts = {} },
  { 'nvim-tree/nvim-tree.lua',             opts = {} },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function() vim.cmd.colorscheme 'catppuccin-mocha' end
  },
  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --   config = function() vim.cmd.colorscheme 'rose-pine' end
  -- },
  {
    'ggandor/leap.nvim',
    dependencies = 'tpope/vim-repeat',
    config = function()
      require('leap')
          .add_default_mappings()
    end
  },
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim',           opts = {} },
      { 'williamboman/mason-lspconfig.nvim', opts = {} },

      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim',                 opts = {} },
      { 'folke/neodev.nvim',                 opts = {} },
    },
  },
  { 'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
   config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  require 'autoformat',
}, {})

-- config treesitter
require('nvim-treesitter.configs').setup {
  -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
  auto_install = false,

  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<M-space>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}

-- Setup mason so it can manage external tooling
require('mason').setup()

