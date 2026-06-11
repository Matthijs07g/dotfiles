--   _____ __        ___            
--  / ___// /___  __/ (_)___  ____ _
--  \__ \/ __/ / / / / / __ \/ __ `/
-- ___/ / /_/ /_/ / / / / / / /_/ /
--/____/\__/\__, /_/_/_/ /_/\__, /
--         /____/          /____/

hl.config({
    general = {
        gaps_in = 1,
        gaps_out = 3,
        border_size = 2,
        ["col.active_border"] = "rgba(84, 74, 237, 0.7)",
        ["col.inactive_border"] = "rgba(0, 0, 0, 0)",
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 0.98,
        inactive_opacity = 0.9,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
        bezier = {
            { "easeOutQuint",   0.23, 1,    0.32, 1 },
            { "easeInOutCubic", 0.65, 0.05, 0.36, 1 },
            { "linear",         0,    0,    1,    1 },
            { "almostLinear",   0.5,  0.5,  0.75, 1 },
            { "quick",          0.15, 0,    0.1,  1 },
        },
        animation = {
            { "global",        true, 10,    "default"      },
            { "border",        true, 5.39,  "easeOutQuint" },
            { "windows",       true, 4.79,  "easeOutQuint" },
            { "windowsIn",     true, 4.1,   "easeOutQuint", "popin 87%" },
            { "windowsOut",    true, 1.49,  "linear",       "popin 87%" },
            { "fadeIn",        true, 1.73,  "almostLinear" },
            { "fadeOut",       true, 1.46,  "almostLinear" },
            { "fade",          true, 3.03,  "quick"        },
            { "layers",        true, 3.81,  "easeOutQuint" },
            { "layersIn",      true, 4,     "easeOutQuint", "fade" },
            { "layersOut",     true, 1.5,   "linear",       "fade" },
            { "fadeLayersIn",  true, 1.79,  "almostLinear" },
            { "fadeLayersOut", true, 1.39,  "almostLinear" },
            { "workspaces",    true, 1.94,  "almostLinear", "fade" },
            { "workspacesIn",  true, 1.21,  "almostLinear", "fade" },
            { "workspacesOut", true, 1.94,  "almostLinear", "fade" },
            { "zoomFactor",    true, 7,     "quick"        },
        },
    },

    dwindle = {
        pseudotile = true,
        preserve_split = true,
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    },
})