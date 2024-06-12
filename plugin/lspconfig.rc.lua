local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

nvim_lsp.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

nvim_lsp.tsserver.setup{
 filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
 init_options = {
   hostInfo = "neovim"
 },
 root_dir = nvim_lsp.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
 single_file_support = true,
 cmd = { "typescript-language-server", "--stdio" }
}
