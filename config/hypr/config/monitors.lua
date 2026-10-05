-- ~/.config/hypr/monitors.lua
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Run `hyprctl monitors` to get your actual output names (DP-1, HDMI-A-1, eDP-1, etc.)

------------------------------
---- SINGLE MONITOR (auto) ----
------------------------------
-- Safe fallback: auto-detects preferred mode, position, and scale.
-- Keep this if you're unsure of your exact monitor name/mode.
hl.monitor({
    output   = "",          -- "" = applies to any unmatched monitor
    mode     = "preferred", -- use the monitor's preferred resolution/refresh rate
    position = "auto",
    scale    = "1.2",
})

------------------------------
---- EXAMPLE: LAPTOP PANEL ----
------------------------------
-- hl.monitor({
--     output   = "eDP-1",
--     mode     = "1920x1080@60",
--     position = "0x0",
--     scale    = "1",
-- })

------------------------------
---- EXAMPLE: EXTERNAL MONITOR (side by side) ----
------------------------------
-- hl.monitor({
--     output   = "DP-1",
--     mode     = "2560x1440@144",
--     position = "1920x0",   -- placed to the right of a 1920px-wide monitor
--     scale    = "1",
-- })

------------------------------
---- EXAMPLE: DISABLE A MONITOR ----
------------------------------
-- hl.monitor({
--     output  = "HDMI-A-1",
--     enabled = false,
-- })

------------------------------
---- EXAMPLE: MIRRORING ----
------------------------------
-- hl.monitor({
--     output = "HDMI-A-1",
--     mirror = "eDP-1",
-- })