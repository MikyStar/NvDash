local command = vim.api.nvim_create_user_command

command("CloseBuffers", function()
  vim.cmd("%bd")
end, {})

command("CloseQuickfixes", function()
  vim.cmd("cexpr []")
end, {})

command("CloseOtherBuffers", function()
  vim.cmd("%bdelete|edit #")
end, {})