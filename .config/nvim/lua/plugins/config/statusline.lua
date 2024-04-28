--[[ Configure statusline ]]
return {
	-- 'nvim-lualine/lualine.nvim',
	-- config = function()
	--     require('lualine').setup({
	--     -- See `:help lualine.txt`
	--       options = {
	--         icons_enabled = false,
	--         theme = 'auto',
	--         component_separators = '|',
	--         section_separators = '',
	--       },
	--       sections = {
	--         lualine_x = {"encoding", "filetype"}
	--       }
	--     })
	--end
	"echasnovksi/mini.statusline",
	config = function()
		local statusline = require("mini.statusline")
		statusline.setup({
			use_icons = true,
		})
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
	end,
}
-- vim: ts=2 sts=2 sw=2 et
