-- [[ Configure file explorer ]]
return {
	"stevearc/oil.nvim",
	keys = {
		{ "<leader>fe", "<cmd>Oil<CR>", desc = "Open Oil" }
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			prompt_save_on_select_new_entry = false,
			show_hidden = true,
			keymaps = {
				["<C-v>"] = "actions.select_vsplit",
			},
		})
	end,
}
