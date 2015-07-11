tabInterp = 1
globalkeys = awful.util.table.join(
    awful.key({ modkey, }, "h", awful.tag.viewprev ),
    awful.key({ modkey, }, "l", awful.tag.viewnext ),
    awful.key({ modkey, }, "Escape", awful.tag.history.restore),

    awful.key({ modkey, }, "k",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey, }, "j",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey, }, "w", function () mymainmenu:show({keygrabber=true}) end),

    -- Layout manipulation
    awful.key({ modkey, "Shift" }, "k", function () awful.client.swap.byidx( 1) end),
    awful.key({ modkey, "Shift" }, "j", function () awful.client.swap.byidx( -1) end),
    awful.key({ modkey, "Control" }, "l", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "h", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey, }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),

        --================================================================================================--
        -- --some useful bindigs
       awful.key({ }, "Print", function () awful.util.spawn("shutter -s") end),
       awful.key({ }, "XF86ScreenSaver", function () awful.util.spawn("lock") end),
       awful.key({ modkey }, "b", function () mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible end),
       awful.key({ }, "XF86AudioRaiseVolume", function () awful.util.spawn("amixer -D pulse sset Master 10%+") end ),
       awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn("amixer -D pulse sset Master 10%-") end),
       awful.key({ }, "XF86AudioMute", function () awful.util.spawn("amixer -D pulse sset Master togglemute") end),
       -- Alt + Right Shift switches the current keyboard layout
       awful.key({ "Mod1" }, "Shift_R", function () kbdcfg.switch() end),
       --let's make 2 configs, when the my CRT monitor is on the right side, and in the left one
       awful.key({ modkey, "Shift" }, "r", function () awful.util.spawn("xrandr --output VGA1 --auto --rotate left --right-of LVDS1") end),
       awful.key({ modkey, "Shift" }, "l", function () awful.util.spawn("xrandr --output VGA1 --auto --rotate left --left-of LVDS1") end),
       awful.key({ modkey, "Shift" }, "f", function () awful.util.spawn("xrandr --output VGA1 --off") end),
       --awful.key({ modkey, "Control" }, "s", function () awful.util.spawn(" xsetwacom set \" WALTOP Tablet stylus\" RawSample", tabInterpolate+1) end),
       --awful.key({ modkey, "Control" }, "h", function () awful.util.spawn(" xsetwacom set \" WALTOP Tablet stylus\" RawSample", tabInterpolate-1) end),
       -- backlight control
       awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn("xbacklight -10%") end),
       awful.key({ }, "XF86MonBrightnessUp", function () awful.util.spawn("xbacklight +10%") end),
       --=================================================================================================--

   -- Standard program
    awful.key({ modkey, }, "Return", function () awful.util.spawn(terminal) end),
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift" }, "q", awesome.quit),

    awful.key({ modkey, }, "i", function () awful.tag.incmwfact( 0.05) end),
    awful.key({ modkey, }, "u", function () awful.tag.incmwfact(-0.05) end),
    awful.key({ modkey, "Shift" }, "i", function () awful.tag.incnmaster( 1) end),
    awful.key({ modkey, "Shift" }, "u", function () awful.tag.incnmaster(-1) end),
    awful.key({ modkey, "Control" }, "i", function () awful.tag.incncol( 1) end),
    awful.key({ modkey, "Control" }, "u", function () awful.tag.incncol(-1) end),
    awful.key({ modkey, }, "space", function () awful.layout.inc(layouts, 1) end),
    awful.key({ modkey, "Shift" }, "space", function () awful.layout.inc(layouts, -1) end),

    awful.key({ modkey, "Control" }, "n", awful.client.restore),

    -- Prompt
    awful.key({ modkey }, "r", function () mypromptbox[mouse.screen]:run() end),


      awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
               end)
)


clientkeys = awful.util.table.join(
    awful.key({ modkey, }, "f", function (c) c.fullscreen = not c.fullscreen end),
    awful.key({ modkey, }, "d", function (c) c:kill() end),
    awful.key({ modkey, "Control" }, "space", awful.client.floating.toggle ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey, }, "o", awful.client.movetoscreen ),
    awful.key({ modkey, }, "t", function (c) c.ontop = not c.ontop end),
    awful.key({ modkey, }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end),
    awful.key({ modkey, }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical = not c.maximized_vertical
        end)
        )

-- Set keys
root.keys(globalkeys)
-- }}}

