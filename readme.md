# Dotfiles

My Hyprland + Noctalia desktop setup, backed up so I can restore it on a new machine in one command.

## Preview

![Desktop](Images/Desktop.png)

| Launcher | Noctalia bar |
|---|---|
| ![Launcher](Images/Launcher.png) | ![Bar](Images/Fastfetch.png) |



## What's inside

| Path in repo | Restored to |
|---|---|
| `config/hypr` | `~/.config/hypr` (Hyprland, Lua configs) |
| `config/noctalia`, `config/quickshell` | `~/.config/...` (bar and shell) |
| `config/fastfetch`, `config/neofetch` | `~/.config/...` |
| `config/spicetify`, `config/wireplumber`, `config/pipewire` | `~/.config/...` |
| `config/<terminal, gtk, qt, shell...>` | `~/.config/...` |
| `home/` | shell rc files in `~` |
| `local-share/applications` | `~/.local/share/applications` (custom launchers) |
| `Wallpapers/` | `~/Pictures/Wallpapers` |
| `system-info.txt` | fastfetch snapshot of the old machine (reference only) |

## Requirements

`install.sh` only restores configs and does not install any apps. Install these first on the new machine:

- Hyprland
- Noctalia shell (and Quickshell if it is a separate package)
- fastfetch (or neofetch)
- Spicetify, PipeWire and WirePlumber, if you use them
- Your terminal, browser and anything else your configs call

## Restore on a new device

```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
./install.sh
```

Existing configs are never overwritten. They are renamed to `<name>.bak-<timestamp>` first. Log out and back in (or reboot) afterwards.

## Update the backup

```bash
bash backup.sh
cd ~/dotfiles && git push
```

Edit the `CONFIG_DIRS` list at the top of `backup.sh` to add or remove folders.

## Notes

- Keep this repo private. Check shell rc files and app configs for tokens or credentials before pushing.
- fastfetch replaces neofetch, which is no longer maintained.