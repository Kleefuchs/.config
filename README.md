<h2>**The following dependencies are not installed by the install.sh script because they themselves are needed by the script**</h2>
[yay](https://github.com/Jguer/yay)

**Clone and enter repository**
```
git clone https://github.com/Kleefuchs/.config.git config
cd config
```

**Copy everything into the .config folder**
```
sudo cp -r ./* ~/.config/
```
**
Install all packages and build waybar-scrollable-mpris**
```
./install.sh  # On Arch-Linux
```

**Exit and escape **
```
cd ..
sudo rm -r config
```

So vola now you have this config installed
