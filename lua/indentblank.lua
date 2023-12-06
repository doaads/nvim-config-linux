vim.opt.list = true
vim.opt.listchars:append "space:⋅"

--[[ OUTDATED
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
	buftype_exclude = {'terminal', 'nofile', 'NvimTree'},
	filetype_exclude = {'help', 'packer', 'NvimTree', 'alpha'},
}
--]]

require "ibl".setup()

