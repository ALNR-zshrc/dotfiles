source /usr/share/cachyos-fish-config/cachyos-config.fish

set -gx EDITOR nvim

# Навигация
abbr -a ~ 'cd ~'
abbr -a .. 'cd ..'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Утилиты
abbr -a cl clear
abbr -a cat bat


# Работа с пакетами 
abbr -a update "sudo pacman -Syu"
abbr -a install "sudo pacman -S"
abbr -a remove "sudo pacman -Rs"

# Быстрый доступ к конфигам
abbr -a conf-fish "nvim ~/.config/fish/config.fish"
abbr -a conf-hypr "nvim ~/.config/hypr/hyprland.conf"
abbr -a conf-wayb.css "nvim ~/.config/waybar/style.css"
abbr -a conf-wayb.jsonc "nvim ~/.config/waybar/config.jsonc"

