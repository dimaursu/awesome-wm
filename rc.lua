-- Standard awesome library
gears = require("gears")
awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- Theme handling library
beautiful = require("beautiful")
-- Widget and layout library
wibox = require("wibox")
-- Notification library
naughty = require("naughty")
menubar = require("menubar")

require("errors")
require("variables")

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
-- }}}


require("tags")
require("menu")
-- w - means widget
require("w_keyboard")
-- c - means custom
-- I use c prefix whenever I think my modules name can conflic with 
-- an existing lua library. It's not the best way to deal with namespace 
-- conflicts, but it works
-- bring in the konni arrows
require("w_arrows")

require("c_wibox")
require("mouseBindings")
require("keyBindings")

require("tagsBindings")
require("rules")
require("c_signals")
require("autorun")

