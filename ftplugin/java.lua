local lsp = require("config.langs").configs.java.lsp
local dap = require("config.langs").configs.java.dap

local mason_registry = require("mason-registry")
local installation_path_lsp = mason_registry.get_package(lsp):get_install_path()
local installation_path_dap = mason_registry.get_package(dap):get_install_path()

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath 'data' .. '/site/java/workspace-root/' .. project_name
os.execute('mkdir -p ' .. workspace_dir)

local status, jdtls = pcall(require, 'jdtls')
if not status then
	return
end
local extendedClientCapabilities = jdtls.extendedClientCapabilities

local config = {
	cmd = {
		'/usr/lib/jvm/java-21-openjdk/bin/java',
		-- '$JAVA_HOME',
		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
		'-Dosgi.bundles.defaultStartLevel=4',
		'-Declipse.product=org.eclipse.jdt.ls.core.product',
		'-Dlog.protocol=true',
		'-Dlog.level=ALL',
		'-Xmx1g',
		'--add-modules=ALL-SYSTEM',
		'--add-opens', 'java.base/java.util=ALL-UNNAMED',
		'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-javaagent:' .. installation_path_lsp .. '/lombok.jar',
		'-jar', vim.fn.glob(installation_path_lsp .. '/plugins/org.eclipse.equinox.launcher_*.jar'),
		'-configuration', installation_path_lsp .. '/config_linux',
		'-data', workspace_dir
	},
	settings = {
		java = {
			signatureHelp = { enabled = true },
			extendedClientCapabilities = extendedClientCapabilities,
			maven = {
				downloadSources = true,
			},
			referencesCodeLens = {
				enabled = true,
			},
			references = {
				includeDecompiledSources = true,
			},
			inlayHints = {
				parameterNames = {
					enabled = 'all', -- literals, all, none
				},
			},
			format = {
				enabled = false,
			},
		},
	},

	init_options = {
		bundles = {
			vim.fn.glob(
				installation_path_dap .. "/extension/server/com.microsoft.java.debug.plugin-*.jar",
				true)
		}
	},
}

require('jdtls').start_or_attach(config)
