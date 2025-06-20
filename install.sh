yay -S waybar dunst playerctl pavucontrol hyprpaper swww hyprshot hyprlock wpctl wl-kbptr wlrctl hyfetch firedragon-bin mission-center brave-bin xfce4-thunar kitty hyprpolkitagent xdg-desktop-portal-hyprland brightnessctl wl-kbptr clipse-bin calc hyfetch hyprland neovim waybar-mpris-git cmake make jsonc

git clone https://github.com/sicista33/waybar-scrolling-mpris.git
cd ./waybar-scrolling-mpris/build
cmake ..
make

mv waybar-scrolling-mpris ~/.config/waybar/waybar-scrolling-mpris
