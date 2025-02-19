local languages_setup = require("languages.base.utils")
local marksman_config = require("languages.base.languages._configs").without_formatting({ "markdown" }, "markdown")

local language_configs = {}

language_configs["dependencies"] = { "marksman", "prettierd", "cbfmt" }

language_configs["lsp"] = function()
    languages_setup.setup_languages({
        ["language"] = "markdown",
        ["marksman"] = { "marksman", marksman_config },
        ["dependencies"] = {
            "prettierd",
            "cbfmt",
        },
    })
end

return language_configs
