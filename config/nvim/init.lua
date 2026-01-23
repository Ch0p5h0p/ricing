require("config.lazy")
require("lazy").setup("plugins")
vim.api.nvim_create_user_command('CRun', function()
        local cmd = vim.fn.input("Command: ")
        if cmd ~= nil and cmd ~= "" then
                vim.cmd("split | terminal "..cmd)
        end
end, {})
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.cmd([[cd ~]])
