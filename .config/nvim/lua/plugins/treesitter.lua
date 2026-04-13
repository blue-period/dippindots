return {
  auto_install = true,
  ensure_installed = {
    "lua",
    "vim",
    "go",
    "toml",
    "css",
    "tsx",
    "html"
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  autotag = {
    enable = true,
    filetypes = {
      'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact',
      'svelte', 'vue', 'tsx', 'jsx', 'rescript',
      'css', 'lua', 'xml', 'php', 'markdown'
    },
  },
  indent = { enable = true },
}
