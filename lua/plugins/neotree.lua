
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw = true, -- Prevents netrw conflicts
			},
		})

		vim.keymap.set("n", "<leader>nt", function()
			vim.cmd("Neotree toggle filesystem left")
		end, { noremap = true, silent = true })

		vim.keymap.set("n", "<leader>nf", function()
			vim.cmd("Neotree focus filesystem left")
		end, { noremap = true, silent = true })

		vim.keymap.set("n", "<leader>nb", function()
			vim.cmd("Neotree toggle buffers left")
		end, { noremap = true, silent = true })
	end,
}

