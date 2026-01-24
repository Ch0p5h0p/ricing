require("config.lazy")
require("lazy").setup("plugins")

local builtin = require("telescope.builtin")
vim.api.nvim_create_user_command(
    'ManPages',
    function(opts)
        if opts.args == '' then
            builtin.man_pages()
        else
            builtin.man_pages({ sections = {opts.args } })
        end
    end,
    {
        desc = "Man page browser",
        nargs = '?'
    }
)

vim.api.nvim_create_user_command('M', function(opts) vim.cmd("ManPages "..opts.args) end, { desc = "Alias for ManPages", nargs = '?'})

vim.api.nvim_create_user_command('CRun', function()
    local cmd = vim.fn.input("Command: ")
    if cmd ~= nil and cmd ~= "" then
        vim.cmd("split | terminal "..cmd)
    end
end, {})

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

vim.cmd([[cd ~]])
