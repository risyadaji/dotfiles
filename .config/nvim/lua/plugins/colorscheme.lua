return {
	"navarasu/onedark.nvim",
	name = "onedark",
	lazy = true,
	priority = 1000,
	opts = {
		style = 'dark',
		transparent = false,  -- Show/hide background
		term_colors = true, -- Change terminal color as per the selected theme style
		ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
		cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu	

		-- toggle theme style ---
		toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it
		toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
	}
}
