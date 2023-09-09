-- Crates (Rust)
return {
	"saecki/crates.nvim",
	tag = "v0.3.0",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("crates").setup()
	end,
	event = { "BufEnter Cargo.toml" },
};
