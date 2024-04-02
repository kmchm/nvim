return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = "mason.nvim",
	cmd = { "DapInstall", "DapUninstall" },
	opts = {
		automatic_installation = true,
		handlers = {},
		ensure_installed = {},
	},
  config = function() 
    require("mason").setup()
    require("mason-nvim-dap").setup()
  end
}

-- not sure if this works lol i have no idea what i am doinq
