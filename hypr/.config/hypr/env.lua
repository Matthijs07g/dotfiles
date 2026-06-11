--    ______              _    __           _       __    __
--   / ____/___ _   __   | |  / /___ ______(_)___ _/ /_  / /__  _____
--  / __/ / __ \ | / /   | | / / __ `/ ___/ / __ `/ __ \/ / _ \/ ___/
-- / /___/ / / / |/ /    | |/ / /_/ / /  / / /_/ / /_/ / /  __(__  )
--/_____/_/ /_/|___/     |___/\__,_/_/  /_/\__,_/_.___/_/\___/____/

local terminal = "alacritty"
local fileManager = "alacritty -e yazi"
local menu = "wofi --show drun"
local browser = "firefox"
local mainMod = "SUPER"

-- Export for use in other files
_G.terminal = terminal
_G.fileManager = fileManager
_G.menu = menu
_G.browser = browser
_G.mainMod = mainMod

hl.config({
    env = {
        { "XCURSOR_SIZE", "24" },
        { "HYPRCURSOR_SIZE", "24" },
    }
})