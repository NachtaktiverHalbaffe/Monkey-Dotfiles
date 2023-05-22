# Monkey Configfiles
It contains all the Linux Configurationfiles from `~/.config` which configures the System. The Distro is Garuda Dr460nized which is built on Arch (I use Arch btw).

# Core Apps
- [Wezterm](https://github.com/wez/wezterm): A very capable terminal emulator written in Rust. The selling points for me is its robustness and the builtin multiplexing feature.
  - I used [Tilix](https://github.com/gnunn1/tilix) before for the same reasons, but Wezterm has proven to be better and more theme- and configurable
- [Obsidian](https://obsidian.md/): Used for taking notes (as Markdown). It has extensive features for building a knowledge base
- [Brave](https://brave.com/de/): Browser. Has nice- builtin ad-, cookie- and script-blocking utilities
- [Dolphin](https://apps.kde.org/de/dolphin/): The File Explorer. It offers everything I need and is better than the Windows one
- [Fastfetch](https://github.com/LinusDierheimer/fastfetch): Used for fetching system information in a terminal 
  - I used [Neofetch](https://github.com/dylanaraps/neofetch) before, but it was much slower
- [ZSH](https://www.zsh.org/): Shell
- Garuda apps which offers GUI to manage the core aspects for the system
- Pipewire as a audio backend because it was installed by default and had no problems since
- [Ferdium](https://ferdium.org/): A place for all Instant messaging Clinets which offer a web version (so no Signal, there the standard desktop app is used)
- [Mailspring](https://www.getmailspring.com/): Mail Client. It offers a nice UI and all features I need. Fpr my Tutanota Mail the standard Tutanota app is used
- [VS Code](https://code.visualstudio.com/): My dev environment. It runs on all systems, has sync features and supports nearly all languages with the help of extensions. With the sync-feature it's a super portable envrionment like a swiss army knife
- [Asusctl](https://asus-linux.org/): Specific tools for my Asus Hardware. Great work by the devs to update the kernel with the pieces which asus hardware needs

# Desktop Environments/Window Manager
There are two Desktop Environments/Window Managers installed:
- KDE Plasma as a "stable" fallback environment
- Hyprland as a fancy, bleeding Edge Compositor which can have some quirks and bugs => Currently Daily driven Environment 

Both are installed alongside and SDDM is used as a Login-Manager fro mwhich the envrionment which should be used can be chosen

## [KDE Plasma](https://kde.org/de/plasma-desktop/)
Its uses the full blown KDE Environment which is kinda heavenly themed. It was the primary environment when the system was setup. I use it with the Wayland session and it works suprisenly fine (although using Nvidia). It's heavenly themed and has a Plasma panel as a Dock and as a bar. I use Activities for my workflow.

## [Hyprland](https://hyprland.org/)
Its a fancy Wayland Compositor. For me its selling factors are the active development and the look and feel. 

Many Bits and Pieces which Plasma delivers out of the box needs replacements here:
- [Waybar](https://github.com/Alexays/Waybar): The status bar at the top of the screens
- [Anyrun](https://github.com/Kirottu/anyrun): Replacement for krunner
- [Swaylock](https://github.com/swaywm/swaylock): Lockscreen
- [WLogout](https://github.com/ArtsyMacaw/wlogout): Logout menu
- [qt5c](https://github.com/desktop-app/qt5ct): Theming of Qt apps
- nm-applet: A system tray for managing internet connections. Uses the KDe Plasma networking backend