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

require("noice").setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},

	presets = {
		bottom_search = true,
		command_palette = true,
		long_message_to_split = true,
		inc_rename = false,
		lsp_doc_border = false,
	},
})

vim.api.nvim_create_user_command('M', function(opts) vim.cmd("ManPages "..opts.args) end, { desc = "Alias for ManPages", nargs = '?'})

vim.api.nvim_create_user_command('CRun', function()
    local cmd = vim.fn.input("Command: ")
    if cmd ~= nil and cmd ~= "" then
        vim.cmd("split | terminal "..cmd)
    end
end, {})

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

vim.cmd([[cd ~]])
