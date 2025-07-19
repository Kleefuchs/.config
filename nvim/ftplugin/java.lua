local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"

local keymap = vim.keymap

local opts = { noremap = true, silent = true }

local lsp_attach = function(client, bufnr)
  require("jdtls.dap").setup_dap_main_class_configs() -- Discover main classes for debugging

  opts.buffer = bufnr

  -- set keybinds. Copied my lspconfig keybinds here
end

local config = {
  cmd = { jdtls_bin },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
  on_attach = lsp_attach,
  init_options = {
    bundles = {
      vim.fn.glob(vim.fn.stdpath("data") .. "/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1),
    },
  },
}
require("jdtls").start_or_attach(config)

