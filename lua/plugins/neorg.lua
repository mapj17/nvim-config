return {{
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
              config = {
                workspaces = {
                  notes = "~/notes",
                },
                default_workspace = "notes",
              },
            },
          },
        }

        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2

        -- Easy enter, easy return
        vim.keymap.set("n", "<Localleader><Localleader>n", ":Neorg index<CR>")
        vim.keymap.set("n", "<Localleader><Localleader>r", ":Neorg return<CR>")

        -- Tasks
        vim.keymap.set("n", "<Localleader><Localleader>t", "i* ( ) <ESC>")
        vim.keymap.set("n", "<Localleader><Localleader>ct", "yypV:s/<Bslash>(.*(.)<Bslash>).*/<Bslash>1 /g<CR>:nohl<CR>$")
        vim.keymap.set("n", "<Localleader><Localleader>st", "yypV:s/<Bslash>(.*(.)<Bslash>).*/<Bslash>1 /g<CR>:nohl<CR>I*<ESC>$")

        -- Lists
        vim.keymap.set("n", "<Localleader><Localleader>l", "i* <ESC>")
        vim.keymap.set("n", "<Localleader><Localleader>cl", "yypV:s/<Bslash>(.*<Bslash>*<Bslash>).*/<Bslash>1 /g<CR>:nohl<CR>$")
        vim.keymap.set("n", "<Localleader><Localleader>sl", "yypV:s/<Bslash>(.*<Bslash>*<Bslash>).*/<Bslash>1 /g<CR>:nohl<CR>I*<ESC>$")

        -- Enumerations
        vim.keymap.set("n", "<Localleader><Localleader>e", "i~ <ESC>")
        vim.keymap.set("n", "<Localleader><Localleader>ce", "yypV:s/<Bslash>(.*<Bslash>~<Bslash>).*/<Bslash>1 /g<CR>:nohl<CR>$")
        vim.keymap.set("n", "<Localleader><Localleader>se", "yypV:s/<Bslash>(.*<Bslash>~<Bslash>).*/<Bslash>1 /g<CR>:nohl<CR>I~<ESC>$")

      end,
    }
  }
