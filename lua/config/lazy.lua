require("config.ensure-lazy")

local plugin_spec = require("plugin-spec")

require("config.vim")
require("lazy").setup({ spec = plugin_spec })
