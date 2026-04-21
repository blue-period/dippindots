return {
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  }
}
