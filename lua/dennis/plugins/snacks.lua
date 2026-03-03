-- snacks.nvim - Collection of small QoL plugins
-- https://github.com/folke/snacks.nvim

---@module 'lazy'
---@type LazySpec
return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@module 'snacks'
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true }, -- better handling of large files
    notifier = { enabled = true }, -- better vim.notify UI
    quickfile = { enabled = true }, -- faster file open
    words = { enabled = true }, -- highlight word under cursor
    terminal = { enabled = true }, -- floating/split terminal
    lazygit = { enabled = true }, -- lazygit integration
    indent = { enabled = false }, -- using indent-blankline.nvim instead
    scroll = { enabled = false }, -- smooth scroll (off by default)
    dashboard = { enabled = false }, -- startup screen (not requested)
    zen = { enabled = true }, -- zen / zoom modes
  },
  keys = {
    -- Terminal (in existing <leader>t "Toggle" group)
    { '<leader>tt', function() Snacks.terminal.toggle() end,                                    desc = '[T]erminal [T]oggle' },
    { '<leader>tf', function() Snacks.terminal.toggle(nil, { win = { style = 'float' } }) end, desc = '[T]erminal [F]loat' },
    -- Git
    { '<leader>gg', function() Snacks.lazygit() end, desc = 'Lazygit' },
    -- Notifications
    { '<leader>un', function() Snacks.notifier.hide() end, desc = '[U]I dismiss [N]otifications' },
    -- Zen / Zoom
    { '<leader>Z', function() Snacks.zen() end, desc = 'Zen mode' },
    { '<leader>z', function() Snacks.zen.zoom() end, desc = 'Zoom mode' },
  },
}
