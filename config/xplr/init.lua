version = '0.20.2'

local home = os.getenv("HOME")
package.path = home
.. "/.config/xplr/plugins/?/init.lua;"
.. home
.. "/.config/xplr/plugins/?.lua;"
.. package.path


require"icons".setup()
require("fzf").setup()
require("wl-clipboard").setup()
require("ouch").setup()
