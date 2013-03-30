--{{ keyboard layout changer

 -- Keyboard map indicator and changer
    kbdcfg = {}
    kbdcfg.cmd = "setxkbmap"
    kbdcfg.layout = {  { "us", "dvorak" }, { "ro", "" }, { "ru", "phonetic" } }
    kbdcfg.current = 1  -- us is our default layout
    kbdcfg.widget = wibox.widget.textbox
    kbdcfg.widget.text = " " .. kbdcfg.layout[kbdcfg.current][1] .. " "
    kbdcfg.switch = function ()
       kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
       local t = kbdcfg.layout[kbdcfg.current]
       kbdcfg.widget.text = " " .. t[1] .. " "
       os.execute( kbdcfg.cmd .. " " .. t[1] .. " " .. t[2] )
    end

--}}
