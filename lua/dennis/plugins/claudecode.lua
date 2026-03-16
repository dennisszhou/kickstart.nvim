return {
  'coder/claudecode.nvim',
  dependencies = { 'folke/snacks.nvim' },
  config = function()
    local claude_width = math.max(80, math.floor(vim.o.columns * 0.35))
    require('claudecode').setup({
      env = { COLUMNS = tostring(claude_width) },
      terminal = {
        snacks_win_opts = {
          position = 'right',
          width = claude_width,
        },
      },
    })
  end,
  keys = {
    { '<leader>c',  nil,                              desc = 'AI/Claude Code' },
    { '<leader>cc', '<cmd>ClaudeCode<cr>',            desc = 'Toggle Claude' },
    { '<leader>cf', '<cmd>ClaudeCodeFocus<cr>',       desc = 'Focus Claude' },
    { '<leader>cr', '<cmd>ClaudeCode --resume<cr>',   desc = 'Resume Claude' },
    { '<leader>cC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
    { '<leader>cm', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select model' },
    { '<leader>cb', '<cmd>ClaudeCodeAdd %<cr>',       desc = 'Add buffer' },
    { '<leader>cs', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send selection' },
    { '<leader>ca', '<cmd>ClaudeCodeDiffAccept<cr>',  desc = 'Accept diff' },
    { '<leader>cd', '<cmd>ClaudeCodeDiffDeny<cr>',    desc = 'Deny diff' },
  },
}
