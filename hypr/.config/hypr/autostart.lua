--    ___         __             __             __
--   /   | __  __/ /_____  _____/ /_____ ______/ /_
--  / /| |/ / / / __/ __ \/ ___/ __/ __ `/ ___/ __/
-- / ___ / /_/ / /_/ /_/ (__  ) /_/ /_/ / /  / /_
--/_/  |_\__,_/\__/\____/____/\__/\__,_/_/   \__/

hl.on("hyprland.start", function()
    hl.exec_cmd(terminal)
    hl.exec_cmd(browser)
    hl.exec_cmd("spotify-launcher")
    hl.exec_cmd("mako")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("qs")
end)