---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "doomchad",
	theme_toggle = { "doomchad", "one_light" },
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
	nvdash = {
		header = {
			"      |\\      _,,,---,,_            ",
			"ZZZzz /,`.-'`'    -.  ;-;;,_        ",
			"     |,4-  ) )-,_. ,\\ (  `'-'       ",
			"    '---''(_/--'  `-'\\_)            ",
		},
		load_on_startup = true,
		buttons = {
			{ "  Tree", "", "NvimTreeFocus" },
			{ "  Find File", "", "Telescope find_files" },
			{ "󰈚  Recent Files", "", "Telescope oldfiles" },
			{ "󰈭  Find Word", "", "Telescope live_grep" },
			{ "  Bookmarks", "", "MarksListAll" },
			{ "  Themes", "", "Telescope themes" },
			{ "  Mappings", "", "NvCheatsheet" },
		},
	},
	tabufline = {
		-- enabled = true,
		-- lazyload = true,
		-- order = { "treeOffset", "buffers", "tabs", "btns" },
		-- modules = nil,
	},
	statusline = {
		theme = "minimal",
		separator_style = "round",
	},
}

return M
