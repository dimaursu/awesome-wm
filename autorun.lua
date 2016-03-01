--{{ autorun stuff :D
function run_once(prg,arg_string,pname,screen)
    -- program, arguments, program name, tag to spawn at.
    if not prg then
        do return nil end
    end

    if not pname then
       pname = prg
    end

    if not arg_string then
        awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. "' || (" .. prg .. ")",screen)
    else
        awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. " ".. arg_string .."' || (" .. prg .. " " .. arg_string .. ")",screen)
    end
end

run_once("/usr/lib/gnome-settings-daemon/gnome-settings-daemon", nil, "gnome-settings-daemon", nil)
run_once("conky")
run_once("xautolock", "-time 15 -locker lock")
run_once("thunderbird")
run_once("deadbeef")
run_once("nm-applet")
--run_once("keepassx")
run_once("redshift")
--run_once("liferea")
--run_once("shutter")
--run_once("dropbox")
run_once("zeal")
-- run_once("chromium")
run_once("hexchat")
run_once("pidgin")
--run_once("anki")

awful.util.spawn_with_shell("conky -c ~/.conkyrc.logs")
awful.util.spawn_with_shell("conky -c ~/.conkyrc.task")
--}}
