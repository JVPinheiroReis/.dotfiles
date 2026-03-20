return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        xml = { "xmlformatter" },
      },
      formatters = {
        prettier = {
          prepend_args = { "--tab-width", "4", "--use-tabs", "false" },
        },
      },
    },
  },
}
