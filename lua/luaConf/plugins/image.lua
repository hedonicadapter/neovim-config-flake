return {
	{
		"image-nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function(plugin)
			require("image").setup({
				backend = "kitty",
				kitty_method = "normal",
				integrations = {
					markdown = {
						enabled = true,
						clear_in_insert_mode = false,
						download_remote_images = true,
						only_render_image_at_cursor = true,
						filetypes = { "markdown", "vimwiki", "html" },
					},
					html = {
						enabled = true,
						only_render_image_at_cursor = true,
						filetypes = { "html", "xhtml", "htm" },
					},
					css = {
						enabled = true,
						only_render_image_at_cursor = true,
					},
				},
				max_width = nil,
				max_height = nil,
				max_width_window_percentage = nil,
				max_height_window_percentage = vim.g.neovim_mode == "skitty" and 30 or 40,

				window_overlap_clear_enabled = false,
				window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },

				editor_only_render_when_focused = vim.g.neovim_mode == "skitty" and false or true,
				tmux_show_only_in_active_window = true,

				hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
			})
		end,
	},
}
