return {
    {
        "folke/noice.nvim",
        dependencies = {
            "rcarriga/nvim-notify",
            "MunifTanjim/nui.nvim",
        },
        event = "VeryLazy",
        config = function()
            require("noice").setup({
                lsp = {
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    },
                },
                routes = {
                    {
                        filter = {
                            event = 'notify',
                            any = {
                                { find = "%d+L, %d+B" },
                                { find = "; after #%d+" },
                                { find = "; before #%d+" },
                            },
                        },
                        opts = { skip = true },
                        view = 'mini',
                    },
                },
                presets = {
                    bottom_search = true,
                    long_message_to_split = true,
                    command_palette = true,
                    lsp_doc_border = true,
                },
                views = {
                    mini = {
                        win_options = {
                            winblend = 0,
                        },
                    },
                },
                hover = {
                    enabled = false,
                  },
                  signature = {
                    enabled = false,
                  },
            })
        end,
    },
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            require("notify").setup({
                background_colour = "#000000",
            })
        end,
    },
}
