local options = {
  formatters_by_ft = {
    -- lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },

    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    svelte = { "prettierd", "prettier" },
    astro = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    graphql = { "prettierd", "prettier" },
    markdown = { "prettierd", "prettier" },

    -- ruby = { "standardrb" },
    java = { "google-java-format" },
    kotlin = { "ktlint" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    proto = { "buf" },

    bash = { "beautysh" },
    sh = { "shellcheck" },
    lua = { "stylua" },

    yaml = { "yamlfix" },
    toml = { "taplo" },

    -- erb = { "htmlbeautifier" },
    xml = { "xmllint" },

    -- c = { "clang_format", "prettierd", "prettier" },
  },

  c = {
    function()
      return {
        exe = "clang-format",
        args = { "--style=file" },
        stdin = true,
      }
    end,
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

return options
