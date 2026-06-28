return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#131516",
        dark_bg    = "#1C1C1A",
        darker_bg  = "#0F1011",
        lighter_bg = "#273236",

        fg         = "#F8EBE3",
        dark_fg    = "#A5B5AB",
        light_fg   = "#F9F5E4",
        bright_fg  = "#F9F5E4",
        muted      = "#72856C",   -- comments (Reseda)

        -- green-moss palette only (+ 2 slight WCAG adjustments), all AA on bg:
        red        = "#F0334A",   -- errors (Red)
        orange     = "#E0C15C",   -- numbers / constants (deep Arylide)
        yellow     = "#F4E276",   -- keywords / types (Arylide)
        green      = "#B8CE76",   -- strings (soft lime)
        cyan       = "#819890",   -- members / fields (Cambridge)
        blue       = "#A5B5AB",   -- functions / methods (Ash Gray)
        purple     = "#8FB87A",   -- control keywords (sage green)
        brown      = "#72856C",   -- deprecated / special (Reseda)

        bright_red    = "#F0334A",
        bright_yellow = "#F4E276",
        bright_green  = "#B8CE76",
        bright_cyan   = "#819890",
        bright_blue   = "#A5B5AB",
        bright_purple = "#8FB87A",

        accent               = "#819890",
        cursor               = "#F4E276",
        foreground           = "#F8EBE3",
        background           = "#131516",
        selection             = "#59594B",
        selection_foreground = "#F8EBE3",
        selection_background = "#131516",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#1F2629" }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        -- Picker path/dir legible (was NonText #585858 ~2.6:1) -> Reseda, AA on bg & hover
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        -- Picker hover row (was Visual #4D5552). #1F2629 chosen for the look (dir-on-hover ~3.87:1, just under AA 4.5, >3:1). Strict-AA option was #0F1011 (4.80:1). Matches hl.CursorLine above.
        hl.SnacksPickerListCursorLine = { bg = "#1F2629" }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
