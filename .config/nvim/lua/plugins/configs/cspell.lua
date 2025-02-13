local cspell = require("cspell")

local opts = {
	sources = {
		cspell.code_actions,
		cspell.diagnostics.with({
			diagnostics_postprocess = function(diagnostic)
				diagnostic.severity = vim.diagnostic.severity.HINT
			end,
		}),
	},
}

return opts
