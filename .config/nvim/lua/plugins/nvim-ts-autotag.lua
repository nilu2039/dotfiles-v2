return {
	"windwp/nvim-ts-autotag",
	ft = {
		"javascript",
		"typescript",
		"html",
		"javascriptreact",
		"typescriptreact",
	},
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
