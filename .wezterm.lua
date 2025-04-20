local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.enable_tab_bar = true 

config.use_fancy_tab_bar = true 

config.default_cursor_style = "BlinkingBlock"

config.cursor_blink_rate = 500

config.animation_fps = 1

config.window_background_opacity = 0.7

config.window_decorations = "NONE | RESIZE"

config.color_scheme = "nord"

config.default_prog = { "powershell.exe", "-NoLogo" }

config.leader = {
    key = "w",
    mods = "ALT"
}

config.keys = {
    {
        key = "r",
        mods = "LEADER",
        action = wezterm.action.ReloadConfiguration
    },
    {
        key = "-",
        mods = "LEADER",
        action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
    },
    {
        key = "|",
        mods = "LEADER|SHIFT",
        action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
    },
    {
        key = "t",
        mods = "LEADER",
        action = wezterm.action.SpawnTab "CurrentPaneDomain"
    },
    {
        key = "q",
        mods = "LEADER",
        action = wezterm.action.CloseCurrentPane { confirm = false }
    },
    {
        key = "w",
        mods = "LEADER",
        action = wezterm.action.CloseCurrentTab { confirm = false }
    },
    {
        key = "k",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection "Up"
    },
    {
        key = "Tab",
        mods = "LEADER",
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        key = "Tab",
        mods = "LEADER|SHIFT",
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        key = "j",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection "Down"
    },
    {
        key = "h",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection "Left"
    },
    {
        key = "l",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection "Right"
    }
}

return config
