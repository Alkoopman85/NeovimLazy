return {
	{
		"williamboman/mason.nvim",
		config = function()
			local mason = require("mason")

			-- enable mason and configure icons
			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ansiblels",
					"pyright",
					"bashls",
					"clangd",
					"cmake",
					"dockerls",
					"docker_compose_language_service",
					"html",
					"helm_ls",
					"jsonls",
					"jdtls",
					"ltex",
					"rust_analyzer",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ansiblels.setup({
				capabilities = capabilities,
				filetypes = {
					"yaml",
					"yaml.ansible",
				},
				settings = {
					{
						ansible = {
							ansible = {
								path = "ansible",
							},
							executionEnvironment = {
								enabled = false,
							},
							python = {
								interpreterPath = "python",
							},
							validation = {
								enabled = true,
								lint = {
									enabled = true,
									path = "ansible-lint",
									arguments = "",
								},
							},
						},
					},
				},
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.cmake.setup({
				capabilities = capabilities,
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.helm_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			-- lspconfig.jtdls.setup({})
			lspconfig.ltex.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
