
local function load_imports()
	local files = {
		'autopairs_config',
		'barbar_config',
		'cursorline_config',
		'lualine_config',
		'indentblank_config',
		'telescope_config',
		'tree_config',
		'treesitter_config',
		'lsp_config',
		'transparent_config',
	}

	for _, file in ipairs(files) do
		local ok, err = pcall(require, file)
	end
end

load_imports()
