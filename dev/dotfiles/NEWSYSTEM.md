# New System notes
These are notes that i've made around setting up and installing a new system. The aim is to make this easier if we need to do it again.

## Installed packages
Run this `apt install` command :)

```
apt install htop keepassxc vim git curl python3.11-venv tmux
```



## Gnome config

The folowing xtensions are installed:
- AppIndicator and KStatusNotifierItem support
- Tactile

The file `gnome-settings.ini` contains a `dconf dump /`. This can be loaded with `dconf load / < gnome-settings.ini`

## Other tools
The following other tools are installed.

- Nextcloud
- golang (https://go.dev/doc/install)
- vscode
- qownnotes

### VSCode

Installed according to instructions on [https://code.visualstudio.com/docs/setup/linux].

```
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code 
```


### QowNotes
Install from https://www.qownnotes.org/installation/debian.html

```
SIGNED_BY='/etc/apt/keyrings/qownnotes.gpg'
sudo mkdir -p "$(dirname "${SIGNED_BY}")"
curl --silent --show-error --location http://download.opensuse.org/repositories/home:/pbek:/QOwnNotes/Debian_12/Release.key | gpg --dearmor | sudo tee "${SIGNED_BY}" > /dev/null
sudo chmod u=rw,go=r "${SIGNED_BY}"
```

```
SIGNED_BY='/etc/apt/keyrings/qownnotes.gpg'
ARCHITECTURE="$(dpkg --print-architecture)"
echo "deb [arch=${ARCHITECTURE} signed-by=${SIGNED_BY}] http://download.opensuse.org/repositories/home:/pbek:/QOwnNotes/Debian_12/ /" | sudo tee /etc/apt/sources.list.d/qownnotes.list > /dev/null
sudo apt update
sudo apt install qownnotes
```


## Other config

### Set default editor
```
sudo update-alternatives --config editor 
```

### Set git author settings
```
git config --global --edit
```
