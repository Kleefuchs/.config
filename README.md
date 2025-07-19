**<h1>These dotfiles are based from and made from the config of Kleefuchs, which was also a great contributor to my dotfiles</h1>**

https://github.com/Kleefuchs/.config

I made this so i can flex and have my hyprland config everywhere.
also the whole config is catppuccin themed

<br />
<br />
<h1>Desktop</h1>

![desktop](https://github.com/Julianos1b/.config/blob/main/pictures/Desktop.png)

<h1>Kitty</h1>

![kitty](https://github.com/Julianos1b/.config/blob/main/pictures/Kitty.png)

<h1>Neovim Filetree</h1>

![Neovim](https://github.com/Julianos1b/.config/blob/main/pictures/Nvim_Filetree.png)

<h1>Neovim when coding</h1>

![Neovim](https://github.com/Julianos1b/.config/blob/main/pictures/Nvim_Coding.png)

Neovim does have dap (+dap-ui) and lsp support.
It also shows your errors inline.
It also has Supermaven (AI Copilot Support built in)
The currently supported languages are:
<br />
-html<br />
-javascript<br />
-css (Only short things like bgc for background-color which I like because it is really fast to type)<br />
-c++<br />
-c<br />
-rust<br />
-java<br />

<h1>Cava</h1>

![Cava](https://github.com/Julianos1b/.config/blob/main/pictures/cava.png)

<h1>Fastfetch</h1>

![Fastfetch](https://github.com/Julianos1b/.config/blob/main/pictures/Fastfetch.png)

under ~/.config/fastfetch/config.jsonc you can change the logo right at the bottom to any desired logo you want. 

<h1>Waybar</h1>

![Waybar](https://github.com/Julianos1b/.config/blob/main/pictures/Waybar.png)


**<h2>How to install them</h2>**

**<h3>If you have already installed them just run git pull in your .config directory!!! This makes your life much easier.</h3>**
You still need to run install.sh!
<br />
<br />

**<h3>The following dependencies are not installed by the install.sh script because they themselves are needed by the script</h3>**
**[yay](https://github.com/Jguer/yay)**
<br />


**<h4>Go over the Releases tab and Download the latest config</h4>**


**<h4>Copy everything into the .config directory</h4>**

```
sudo cp -r ./* ~/.config/
```

**<h4>Install all needed software</h4>**

```
cd .installation
./arch_install.sh  # On Arch-Linux
```

**<h4>Exit and escape</h4>**

```
cd ..
sudo rm -r config
```

**<h3>Neovim specific stuff</h3>**

Execute following commands for nvim-jdtls:
```
git clone https://github.com/microsoft/java-debug.git ~/.local/share/nvim/java-debug
cd ~/.local/share/nvim/java-debug
./mvnw clean install
```

Navigate into the Neovim configuration and open Neovim.
```
cd ~/.config/nvim
nvim
```

Inside Neovim open Explorer (with ```:Ex```) and navigate into ```user/lua/packer-bootstrap.lua```.
Now that you are inside the file use ```:so``` to source the file and install packer.

<br />

After that navigate into ```user/lua/packer.lua``` and enter ```:so``` to source and ```:PackerSync``` to install of the plugins.

**<h3>Wallpaper related stuff</h3>**
The active Wallpapers for swww are supposed to be in ```~/Wallpapers/active```

So vola now you have this config installed
