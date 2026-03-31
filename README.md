# dotfiles-base
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

- Authentication agent*
- Notification daemon*
- Pipewire*
- XDG Desktop Portal*
- File manager*
- Clipboard*
- Wallpaper
- Application launcher
- Status bar
