local hipatterns = require('mini.hipatterns')

hipatterns.setup({
  highlighters = {
    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
    fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
    todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
    note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = hipatterns.gen_highlighter.hex_color(),
  },
})

local notify = require("mini.notify")

notify.setup()

vim.notify = notify.make_notify({
    ERROR = { duration = 8000 },
    WARN = { duration = 7000 },
    INFO = { duration = 6000 },
})

vim.notify("Welcome to Kleefuch's neovim config!", vim.log.levels.INFO)


local mini = require("mini.jump")

mini.setup()
