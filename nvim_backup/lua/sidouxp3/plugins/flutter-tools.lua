-- import flutter-tools plugin safely
local setup, flutter_tools = pcall(require, "flutter-tools")
if not setup then
	return
end

-- used to enable autocompletion (assign to every lsp server config)
-- local capabilities = cmp_nvim_lsp.default_capabilities()
require("flutter-tools").setup({
	decorations = {
		statusline = {
			-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
			-- this will show the current version of the flutter app from the pubspec.yaml file
			app_version = true,
			-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
			-- this will show the currently running device if an application was started with a specific
			-- device
			device = false,
			-- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
			-- this will show the currently selected project configuration
			project_config = false,
		},
	},
	widget_guides = {
		enabled = true,
	},
	closing_tags = {
		highlight = "ErrorMsg", -- highlight for the closing tag
		prefix = ">", -- character to use for close tag e.g. > Widget
		enabled = true, -- set to false to disable
	},
	dev_log = {
		enabled = true,
		notify_errors = false, -- if there is an error whilst running then notify the user
		open_cmd = "tabedit", -- command to use to open the log buffer
	},
	lsp = {
		color = { -- show the derived colours for dart variables
			enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
			background = true, -- highlight the background
			background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
			foreground = false, -- highlight the foreground
			virtual_text = true, -- show the highlight using virtual text
			virtual_text_str = "■", -- the virtual text character to highlight
		},
		-- on_attach = my_custom_on_attach,
		-- capabilities = my_custom_capabilities -- e.g. lsp_status capabilities
		--- OR you can specify a function to deactivate or change or control how the config is created
		capabilities = function(config)
			config.specificThingIDontWant = false
			return config
		end,
		-- see the link below for details on each option:
		-- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
		settings = {
			showTodos = true,
			completeFunctionCalls = true,
			analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
			renameFilesWithClasses = "prompt", -- "always"
			enableSnippets = true,
			updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
		},
	},
})
