-- local ok, err = os.rename('~/.config/github-copilot/', '~/.config/github-copilot/')
-- if not ok then
--   return {}
-- end

return {
  "github/copilot.vim",
  lazy = false,
  config = function()
    vim.g.copilot_proxy_strict_ssl = false
    vim.g.copilot_node_command = vim.fn.glob("~/.nvm/versions/node/v22.*/bin/node")
    vim.g.copilot_enterprise_uri = 'https://ag2r.ghe.com'
    vim.g.copilot_enabled = false

    -- Custom accept keybinding
    vim.keymap.set('i', '<C-Y>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.g.copilot_no_tab_map = true
  end,
}
