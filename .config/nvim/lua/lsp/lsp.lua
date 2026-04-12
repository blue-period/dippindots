local servers = {
  "pyright",
  "rust_analyzer",
  "lua_ls",
}

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "creativenull/efmls-configs-nvim",
  },
  event = "BufReadPre",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = servers,
    })

    -- Shared defaults for every LSP config
    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    -- EFM
    local prettier = require("efmls-configs.formatters.prettier_d")
    local black = require("efmls-configs.formatters.black")

    local languages = {
      css = { prettier },
      scss = { prettier },
      sass = { prettier },
      less = { prettier },
      html = { prettier },
      javascript = { prettier },
      typescript = { prettier },
      json = { prettier },
      markdown = { prettier },
      python = { black },
      yaml = { prettier },
    }

    vim.lsp.config("efm", {
      filetypes = vim.tbl_keys(languages),
      init_options = {
        documentFormatting = true,
        documentRangeFormatting = true,
      },
      settings = {
        rootMarkers = { ".git/" },
        languages = languages,
      },
    })

    -- Elixir
    vim.lsp.config("elixirls", {
      -- Add cmd here if elixir-ls is not on PATH.
      -- cmd = { "/path/to/elixir-ls/language_server.sh" },
    })

    -- Lua
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
          format = {
            enable = true,
            defaultConfig = {
              indent_style = "space",
              indent_size = "2",
            },
          },
        },
      },
    })

    -- Python
    vim.lsp.config("pyright", {})

    -- Rust
    vim.lsp.config("rust_analyzer", {})

    -- Enable servers
    vim.lsp.enable("pyright")
    vim.lsp.enable("rust_analyzer")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("efm")
    vim.lsp.enable("elixirls")
  end,
}
