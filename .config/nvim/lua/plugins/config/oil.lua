-- [[ Configure file explorer ]]
return {
	"stevearc/oil.nvim",
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = true,
			prompt_save_on_select_new_entry = false,
			show_hidden = true,
			keymaps = {
				["<C-v>"] = "actions.select_vsplit",
			},
		})
	end,
}
