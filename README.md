**<h1>These are my personal dotfiles feel free to use them. :)</h1>**

I made this repo so I don't need to carry a USB-Stick with me every time I reinstall or install on a new machine.
I've intentionally made it relatively easy to install (at least on Arch Linux).

<br />
<br />

![Only Hyprland](https://github.com/user-attachments/assets/6ec75fce-6165-4fa5-a256-9d9ae9bb65b1)

![Hyprland and kitty](https://github.com/user-attachments/assets/5f9b068b-329b-4363-b0d2-db426b4a8427)

![Neovim CPP](https://github.com/user-attachments/assets/0922a330-e5b9-4f0d-8cbd-5177e609945d)

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

![Waybar](https://github.com/user-attachments/assets/2c1cbf33-e60c-4f02-abaa-aa7021f4b5d8)



**<h2>How to install them</h2>**

**<h3>If you have already installed them just run git pull in your .config directory!!! This makes your life much easier.</h3>**
You still need to run install.sh!
<br />
<br />

**<h3>The following dependencies are not installed by the install.sh script because they themselves are needed by the script</h3>**
**[yay](https://github.com/Jguer/yay)**
<br />
<br />
<br />

**<h4>Clone and enter repository</h4>**

```
git clone https://github.com/Kleefuchs/.config.git config
cd config
```

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
