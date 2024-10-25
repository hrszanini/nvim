return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python"
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		dapui.setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		local python_dap = require("config.langs").configs.python.dap
		local path = require("mason-registry").get_package(python_dap):get_install_path() .. "/venv/bin/python"
		require("dap-python").setup(path)

		dap.adapters.godot = {
			type = "server",
			host = "127.0.0.1",
			port = 6006,
		}

		dap.configurations.gdscript = {
			{
				type = "godot",
				request = "launch",
				name = "Launch scene",
				project = "${workspaceFolder}",
				launch_scene = true,
			},
		}
	end
}
