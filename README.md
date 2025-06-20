**<h1>These are my personal dotfiles feel free to use them. :)</h1>**

I made this repo so I don't need to carry a USB-Stick with me every time I reinstall or install on a new machine.
I've intentionally made it relatively easy to install (at least on Arch Linux).

**<h2>How to install them</h2>**

**<h3>The following dependencies are not installed by the install.sh script because they themselves are needed by the script</h3>**
**[yay](https://github.com/Jguer/yay)**
<br />
<br />

**<h4>Clone and enter repository</h4>**

```
git clone https://github.com/Kleefuchs/.config.git config
cd config
```

**<h4>Copy everything into the .config folder</h4>**

```
sudo cp -r ./* ~/.config/
```

**<h4>Install all packages and build waybar-scrollable-mpris</h4>**

```
./install.sh  # On Arch-Linux
```

**<h4>Exit and escape</h4>**

```
cd ..
sudo rm -r config
```

So vola now you have this config installed
