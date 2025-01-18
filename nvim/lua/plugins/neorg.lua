return {
  "nvim-neorg/neorg",
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = "*", -- Pin Neorg to the latest stable release
  config = {
    load = {
      ["core.defaults"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Documents/notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.concealer"] = {}, -- We added this line!
      ["core.summary"] = {},
      ["core.export"] = {},
    },
  },
}
