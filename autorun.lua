--{{ autorun stuff :D
function run_once(prg)
  awful.util.spawn_with_shell("pgrep -u $USER -x " .. prg .. " || (" .. prg .. ")")
end

run_once("nohup /usr/lib/gnome-settings-daemon/gnome-settings-daemon")
run_once("conky -c ~/.conkyrc.task")
run_once("xautolock")
--run_once("claws-mail")
--run_once("luakit")
--run_once("wicd-client")
--run_once("owncloud")
--run_once("ssh-agent")
run_once("deadbeef")
--run_once("transmission-gtk")
--run_once("sparkleshare start")
--run_once("xcompmgr -c -f -F -r8")
run_once("nm-applet")
run_once("redshift")
--run_once("liferea")
run_once("xchat")
run_once("pidgin")
run_once("shutter")
run_once("thunderbird")
run_once("anki")
run_once("xrdb ~/.Xresources")

--}}
