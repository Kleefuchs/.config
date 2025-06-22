**<h1>These are my personal dotfiles feel free to use them. :)</h1>**

I made this repo so I don't need to carry a USB-Stick with me every time I reinstall or install on a new machine.
I've intentionally made it relatively easy to install (at least on Arch Linux).

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
cd installation
./install.sh  # On Arch-Linux
```

**<h4>Exit and escape</h4>**

```
cd ..
sudo rm -r config
```

**<h3>Neovim specific stuff</h3>**

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
