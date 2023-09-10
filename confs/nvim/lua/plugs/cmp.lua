-- Add crates to cmp sources
return {
	"hrsh7th/nvim-cmp",
	opts = function(_, opts)
		opts.sources[#opts.sources + 1] = { name = "crates" }
	end,
};
