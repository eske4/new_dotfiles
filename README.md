# Dotfiles

My dotfile configuration for Arch Linux and Hyprland.

![Desktop Screenshot](https://github.com/eske4/dotfiles/blob/main/images/Desktop.png)

## Desktop Configuration

Follow these steps to set up your desktop environment:

### Step 1: Clone repo

1. Leave Root:
   `su your-username`
2. Clone repo to
   `git clone https://github.com/eske4/dotfiles.git ~/dotfiles`

### Step 2: Configure Hyprland Environment

1. Navigate to `~/dotfiles/home/.config/hypr/conf/environment.conf`.
2. By default, this file is set up for Nvidia. If you're not using an Nvidia card, follow the comments in the file to disable Nvidia-specific settings.

### Step 3: Run installation script

1. Change to the `dotfiles` directory: `cd ~/dotfiles`
2. Give execution permission to the setup script `chmod +x run_setup.sh`
3. Execute the installation script `run_setup.sh
`

### Step 3: Configure display

1. Open `Display Settings` using app launcher shortcut(MOD(Windows key...) + SPACE.
2. Ensure the scale is set to 1.
3. Set the screen size to maximum.

### Step 4: Configure GTK

1. Press Space + Mod(Windows key..)
2. Search GTK Settings and open it
3. Select themes in the menu

This are an must as some software require these themes

### Step 5: Add hyprpm plugin - if hyprland plugin system fail

1. Locate the script `hyprplugin.sh` at `~/dotfiles/setup/system/hyprplugin.sh`
2. Execute the script `./hyprplugin.sh`

Hyprplugin can only be installed, while the Hyprland is running. Therefor this script has to be executed

### Step 6: Set Background: Optional

1. To set the background, click the gallery icon in the bar at the top-right corner.
2. To add more wallpapers, navigate to `~/dotfiles/links/Wallpapers` and place your desired images there.

### Step 7: Enable Pywal for Discord: Optional

1. Execute the command `betterdiscordctl reinstall`
2. Inside Discord find BetterDiscord settings and go under theme and enable pywal theme

Reinstall is applied, as there is already a theme file which makes betterdiscordctl think it's installed

## Dependencies

- **Waybar**: Status bar for Hyprland
- **GTK**: Graphical toolkit
- **Sddm-git**: Login display manager
- **Kitty**: Terminal emulator
- **Hyprland-git**: Desktop environment
- **Hyprsunset**: Bluefilter + Brightness
- **Hyprpolkitagent**: Application permissions
- **Hypridle**: Inactivity handler
- **Hyprlock**: Lock screen
- **SWWW**: Wallpaper engine
- **Waypaper**: Wallpaper changer UI
- **UDiskie**: External drive manager
- **Pipewire**: Audio engine
- **Wireplumber**: Pipewire session manager
- **Pavucontrol**: Audio control UI
- **Slurp** and **Grim**: Screenshot system
- **Cliphist**: Clipboard manager
- **Pywal**: Theming tool
- **Wpgtk**: Pywal manager
- **SwayNc**: Notification center
- **UPower**: Power management tool
- **Tofi**: Applauncher
- **Swappy**: Screenshot editor
- **Nwg**: GTK manager ui
- **Starship** Terminal tool
- **ZSH**: Shell enviroment

## Bugs

- No major bugs reported so far. If any appear, they haven't been noticed yet.

## TODO

- [x] Setup SDDM(Simple Desktop Display Manager).
- [x] Script to symlink even when the file and structure already exists.
- [x] Customize login screen ui
- [x] Restyle Hyprlock
- [x] Fix Hyprlock style when using gif as background
- [x] Themed Waybar
- [x] Themed SwayNC
- [x] Themed Wlogout
- [x] Wallpaper bug fixed, can now change wallpaper while neovim is open
- [ ] Update brightness UI in Waybar to integrate with Hyprsunset.
- [x] Add custom login manager theme.

## Requirement

Storage around 30GB - For dotfiles and linux, depending on how many kernels etc
