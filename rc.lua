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
require("c_wibox")
require("rules")
require("c_signals")

--{{ autorun stuff :D
function run_once(prg)
  awful.util.spawn_with_shell("pgrep -u $USER -x " .. prg .. " || (" .. prg .. ")")
end

run_once("nohup /usr/lib/gnome-settings-daemon/gnome-settings-daemon")
run_once("conky") 
run_once("conky -c ~/.conkyrc.task") 
run_once("xautolock")
run_once("claws-mail")
--run_once("luakit")
--run_once("wicd-client")
--run_once("owncloud")
--run_once("ssh-agent")
run_once("audacious")
--run_once("anki")
--run_once("transmission-gtk")
--run_once("sparkleshare start")
--run_once("xcompmgr")
run_once("nm-applet")
run_once("redshift")
--run_once("liferea")
run_once("xchat")
run_once("pidgin")
run_once("shutter")
run_once("xrdb ~/.Xresources")

--}}


