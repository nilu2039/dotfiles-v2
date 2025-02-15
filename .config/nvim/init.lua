require("core.keymaps")
require("core.options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	require("plugins.neotree"),
	require("plugins.colortheme"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.yazi"),
	require("plugins.lazygit"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.gitsigns"),
	require("plugins.indent-blankline"),
	require("plugins.misc"),
	require("plugins.conform"),
	require("plugins.nvim-ts-autotag"),
	require("plugins.copilot"),
	require("plugins.tabout"),
	require("plugins.alpha"),
})

vim.cmd("colorscheme base16-black-metal-gorgoroth")
