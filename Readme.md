# Monkey Configfiles
It contains all the Linux Configuration files from `~/.config` which configures the System. The Distro is Garuda Dr460nized which is built on Arch (I use Arch btw).

# Installation
For dotfile management I use [stow](https://www.gnu.org/software/stow/) on Linux. This symlinks the configs from this repository to your configs in your home repository. For this purpose, clone this repository into your home directory. For symlinking, run `stow <folder name>` e.g. `stow hypr`. 

For windows I use [PSDotFile](https://github.com/ralish/PSDotFiles?tab=readme-ov-file#configuring). It works similiar to GNU Stow with symlinking. You configure the target locations with metadata profiles located under `metadata`. It mainly contains configs to ignore the Linux only configs and adjusts the the symlinking paths of the cross platform applications to the Windows one i.e. the folder structure of the cross platform apps adhere to the Stow structure. 

You have to add some config to your Powershell profile (`$HOME\Documents\WindowsPowerShell\profile.ps1`) in order for PSDotFile to work. An example profile can be found under `docs/PsDotFiles`. After setting `$DotFilesPath` you can run `Install-DotFiles` to create the symlinks.

# Core Apps
- [Ghostty]([chezmoi](https://ghostty.org/)): A very capable terminal emulator written in Zig. The selling points for me is its robustness, the builtin multiplexing feature and cross platform support
  - I used [Wezterm](https://wezterm.org/index.html) before for the same reasons, but Ghostty has proven to be better. But you can use both
- [Obsidian](https://obsidian.md/): Used for taking notes (as Markdown). It has extensive features for building a knowledge base
- [Zen](chezmoi): Browser. Has the best UI/UX in my opinion. The navigation is better, workspaces, pinned folders/tabs and essential tabs are a very new and good approach for organizing your browsing experience
- [Thunar](https://docs.xfce.org/xfce/thunar/start): The File Explorer. It offers everything I need and is better than the Windows one
- [Fastfetch](https://github.com/LinusDierheimer/fastfetch): Used for fetching system information in a terminal 
  - I used [Neofetch](https://github.com/dylanaraps/neofetch) before, but it was much slower
- [ZSH](https://www.zsh.org/): Shell
- [Ferdium](https://ferdium.org/): A place for all Instant messaging Clinets which offer a web version (so no Signal, there the standard desktop app is used)
- [Thunderbird](https://www.getmailspring.com/): Mail Client. It offers a nice UI and all features I need. For my Tutanota Mail the standard Tutanota app is used
- [VS Code](https://code.visualstudio.com/): My dev environment. It runs on all systems, has sync features and supports nearly all languages with the help of extensions. With the sync-feature it's a super portable envrionment like a swiss army knife
- [Asusctl](https://asus-linux.org/): Specific tools for my Asus Hardware. Great work by the devs to update the kernel with the pieces which asus hardware needs
- Garuda apps which offers GUI to manage the core aspects for the system
- Pipewire as a audio backend because it was installed by default and had no problems since

# Desktop Environments/Window Manager
There are two Desktop Environments/Window Managers installed:
- KDE Plasma as a "stable" fallback environment
- Hyprland as a fancy, bleeding Edge Compositor => Currently Daily driven Environment 

Both are installed alongside and SDDM is used as a Login-Manager from which the environment which should be used can be chosen

## [KDE Plasma](https://kde.org/de/plasma-desktop/)
Its uses the full blown KDE Environment which is kinda heavenly themed. It was the primary environment when the system was setup. I use it with the Wayland session and it works surprisingly fine (although using Nvidia). It's heavenly themed and has a Plasma panel as a Dock and as a bar. I used Activities for my workflow.

## [Hyprland](https://hyprland.org/)
Its a fancy Wayland Compositor. For me its selling factors are the active development, the look and feel and the efficiency when using it with the right short cuts. Also I like the tiling window manager approach more than the stacking window manager because its more convenient to have everything opened at full screen and automatically organized if there are multiple windows on one screen. 

Many Bits and Pieces which Plasma delivers out of the box needs replacements here:
- [HyprPanel](https://hyprpanel.com/): The status bar at the top of the screens
- [Vicinae](https://docs.vicinae.com/): Launcher (Replacement for krunner). Its a FOSS variant for raycast
- [Easyeffects](https://github.com/wwmm/easyeffects): Audio processor & effects (auto volume leveling etc)
- **System Services**:
  - ~~[Swaylock](https://github.com/swaywm/swaylock)~~ [Hyprlock](https://github.com/hyprwm/hyprlock/releases): Lockscreen 
  - [HyprIdle](https://github.com/hyprwm/hypridle): Idle deamon (mainly for lockscreen and dimming screen)
  - [Hyprpaper](https://github.com/hyprwm/hyprpaper): For desktop background
  - [SwayOSD](https://github.com/ErikReider/SwayOSD): For On-Screen-Display (little popup when changing volume etc.)
  - [Udiskie](https://github.com/coldfix/udiskie): For automounting removeable media
  - [Swaync](https://github.com/ErikReider/SwayNotificationCenter): Notification daemon
- [WLogout](https://github.com/ArtsyMacaw/wlogout): Logout menu
- [qt6c](https://github.com/desktop-app/qt6ct): Theming of Qt apps
- nm-applet: A system tray for managing internet connections. Uses the KDe Plasma networking backend

## [GlazeWm](https://github.com/glzr-io/glazewm)
Its a tiling window manager for windows. There are also some other options out there, but some of them did not allow a license for commercial use so I cant use it on my work laptop.

It comes with everything out of the box because it just uses the Windows Desktop environment. You can optionally install zbar but I'm personally fine running the default windows task bar.

# License
Copyright 2025 NachtaktiverHalbaffe

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
