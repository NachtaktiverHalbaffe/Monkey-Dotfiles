# Standard programs
export CODEEDITOR=code
export EDITOR=/bin/nano
export BROWSER=brave
export TERMINAL=tilix
export QSYS_ROOTDIR=/home/nachtaktiverhalbaffe/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin

# Set XDG enviroment variables
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# For cleaning up dotfiles
# Configs
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export KDEHOME="$XDG_CONFIG_HOME"/kde
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java    
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitr
export IPYTHONDIR="${XDG_CONFIG_HOME}"/ipython
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# Data
export ANDROID_HOME="$XDG_DATA_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ZSH="$XDG_DATA_HOME"/oh-my-zsh 
export WINEPREFIX="$XDG_DATA_HOME"/wine
export XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons
# Cache
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java -Djavafx.cachedir=${XDG_CACHE_HOME}/openjfx"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
# State
export KERAS_HOME="${XDG_STATE_HOME}"/keras

