# dotfiles-base

> [!CAUTION]
> This repo is still a WIP. So some things will be missing or not finished.

## To Do:
- Workspaces — easiest, fully native
    Quickshell has Quickshell.Hyprland built in with HyprlandWorkspace which gives you workspace info per monitor natively.
- Volume — fully native via Pipewire module
    Quickshell has Quickshell.Services.Pipewire built in which gives you direct access to audio nodes, volumes and mute states without running any processes.
- Bluetooth — fully native module
    Quickshell has a built in Quickshell.Bluetooth module which makes this much easier than network. You get devices, connection state and can connect/disconnect natively.
- Network — needs process parsing
    Quickshell doesn't have a built in network module so you'd use nmcli via a Process to get connections and toggle them. It's doable but requires parsing nmcli output.
- VPN — most complex, consider leaving for later
    This is more complex — strongSwan uses swanctl or ipsec commands. You'd run those via Process and parse the output. Setting up new VPNs from the bar would be very complex to build from scratch

A clean, modular Hyprland base config to get you up and running fast. The default `hyprland.conf` is split into separate files so everything is easy to find and edit.

## Structure
```
hypr/.config/hypr/
├── hyprland.conf       # sources all files below
├── autostart.conf      # programs that launch on login
├── binds.conf          # keybindings
├── env.conf            # environment variables
├── input.conf          # keyboard, mouse, touchpad settings
├── monitors.conf       # monitor layout 
├── permissions.conf    # portal and security settings
├── rules.conf          # window rules
└── styling.conf        # gaps, borders, colors, animations

alacritty/.config/alacritty/
└── alacritty.toml      # terminal config, sets Fish as default shell
```

## Install

> [!NOTE]
> The only opinionated choice this config makes is Alacritty as the terminal running Fish shell. Both can be swapped out easily in `env.conf` and `alacritty.toml`.

> [!NOTE]
> Run this from a TTY (Ctrl+Alt+F3) or from another DE like KDE Plasma, not from within Hyprland. Make sure you have git installed and an internet connection before starting.

> [!WARNING]
> If configs already exist in `~/.config` from a previous install, remove them first before running `install.sh`, otherwise stow will throw a conflict error.

```bash
git clone https://github.com/Matthijs07g/dotfiles-base ~/dotfiles
cd ~/dotfiles
bash install.sh
```

The install script uses pacman to install hyprland, alacritty, fish, stow and git.

After install, edit `monitors.conf` to match your display setup if needed. Everything else should work out of the box.

## Updating

To pull and apply changes on an existing machine:

```bash
git pull
bash update.sh
```

`update.sh` restows all packages, syncing the symlinks between your dotfiles and `~/.config`.

## Managing config files

> [!WARNING]
> Don't add files directly in the `~/.config` folder, only in your dotfiles folder. Otherwise stow will throw a conflict error. To fix it, remove the conflicting file from `~/.config/` and run `update.sh` again.

**Adding a file:**
1. Create the file somewhere in `~/dotfiles/`
2. If a new folder was added, add it to the `PACKAGES` variable in `update.sh`
3. Run `bash update.sh`

**Removing a file:**
1. Delete the file somewhere in `~/dotfiles/`
2. If the entire folder was removed, remove it from the `PACKAGES` variable in `update.sh`
3. Run `bash update.sh`

## Next steps

It would be wise to finish the setup for a minimal Hyprland install. The following are missing, ones marked with * are necessary for a working system:

- Authentication agent* -> hyprpolkitagent
- Notification daemon* -> mako
- Pipewire* -> pipewire + wireplumber + pipewire-pulse
- XDG Desktop Portal* xdg-desktop-portal-hyprland 
- File manager* -> yazi
- Clipboard* -> cliphist + clipboard-wl
- Wallpaper
- Application launcher -> wofi
- Status bar
- Display manager -> SDDM
