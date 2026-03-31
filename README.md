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
> The only opinionated choice this config makes is Alacritty as the terminal running Fish shell. Both can be swapped out easily in env.conf and alacritty.toml.

```bash
git clone https://github.com/Matthijs07g/dotfiles-base ~/dotfiles
cd ~/dotfiles
bash install.sh
```
> The install script uses pacman to install hyprland, alacritty, fish, stow and git.

After install, edit `monitors.conf` to match your display setup if needed. Everything else works out of the box.

## Managing config files

> [!WARNING]
> Don't add files directly in the .config folder, only in your dotfiles folder. Otherwise stow will throw an error. To solve it remove the targetted file from the .config/ folder.

**Adding a file:**
1. Create a file in somewhere in `~/dotfiles/`
2. If a folder was added then add the folder to the `PACKAGES` variable in `update.sh` if it's in a new folder
3. Run `bash update.sh`

**Removing a file:**
1. Delete a file somewhere in `~/dotfiles/`
2. If a folder was removed then remove the folder from the `PACKAGES` variable in `update.sh`
3. Run `bash update.sh`

## Next steps

It would be wise to finish the setup for the rest of a minimal hyprland setup as the following apps are missing, the ones with * are necessary for a working system:
- Authentication agent*
- Wallpaper
- Notification Daemon*
- Application launcher
- File manager*
- Pipewire*
- XDG Desktop Portal*
- Status bar
- Clipbord*
