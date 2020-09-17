# My personal Dotfiles
This files and the installation process below are basically my first steps on a clear Arch linux instalLation (Just base-devel, dhcpcd, iwd and sudo). If is you case, just install a display manager after this process and have fun!

##### Polybar theme credit
The Polybar config used on this dotfilse are a simple modification of one theme of this repository : https://github.com/adi1090x/polybar-themes/blob/master/polybar-8/modules.ini In fact, this repository is definitely the best place to find interesting themes for Polybar.


## Preview:
![Alt text](prints/screenshot.png?raw=true "Preview")
___
#### Dependencies

The instalation require this follow packages:
* Zsh (Oh my zsh)
* Git
* Wget
* Vim (Vundle)
* i3-gaps
* Polybar
* Picom tryone
* Xfce4 Terminal
* Rofi
* Gnome-screenshot
* Clipit
* Ranger (Optional)
* Firefox (Optional)
* NodeJs and Yarn (Optional, for Coc.nvim)
* Go
* Rustup (Optional)
___

#### Install the dependencies:
Follow this steps for Instalation on Arch Linux:

Install all require packages available on official repository:

```# pacman -S zsh git wget vim i3-gaps rofi xfce4-terminal ranger gnome-screenshot firefox nodejs yarn go rustup```

You can ignore the optional packages, but alterations is required on .vimrc, i3/config files, polybar/modules.ini.

Install Vim vundle, Oh my zsh and the zsh plugins:
```
$ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
Type "yes" for the change shell option on end of the script.
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
$ git clone git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Do logout and return.

Install the rofi themes (all option):
```
$ git clone https://github.com/davatorium/rofi-themes.git
$ cd rofi-themes
$ ./install.sh
```

Install the yay AUR helper (base-devel and go are required): 

```
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -i
```

This step must be runned in userland, if you have problems of permissions on last line of the command, run this outside of the yay folder:
```
$ chowm -R $USER yay
```

Finally install the packages only available on AUR:
```
$ yay -S polybar picom-tryone-git clipit
```
___
#### Install
Clone this repository and copy the files to the appropriate directories:
```
$ git clone https://github.com/Math-Ryan/My-personal-Dotfiles
$ cd My-personal-Dotfiles
$ cp -r home/* $HOME/
$ cp -r config/* $HOME/.config/
# cp -r config/polybar/fonts/* /usr/share/fonts/
$ fc-cache -v
```

Time to install the vim plugins. If you don't want the Rust and Go language suport, remove or comment the "Plugin 'fatih/vim-go'" and "Plugin 'rust-lang/rust.vim'" of .vimrc file. And, for any reason you don't want coc.nvim as your code completition frontend, remove or comment "Plugin 'neoclide/coc.nvim'".

Anyway, open vim and install plugins with: ```:PluginInstall```
____
##### Setup vim for Go and Rust:

##### GO:
```
mkdir -p $HOME/Projects/go/bin
mkdir $HOME/Projects/go/pkg
mkdir $HOME/Projects/go/src
```
Reestart the shell again (logout and return or close the terminal and open in graphical interface).

Run ```go env``` and check if GOPATH and GOBIN are set to your new folders.

Open vim and run: ```:GoInstallBinaries``` and if successful: ```:CocInstall coc-go```

##### Rust:
```
$ rustup install nightly
$ rustup component add rls rust-analysis rust-src
```

open vim and run: ```:CocInstall coc-rls```
____

The configs of Polybar and i3 may need changes, example: on my old laptop, the name of wireless adapter was wlp3s0, and the actualy config/modules.ini have wlan0 on the network module. In cases like that a simple change one one or two lines can resolve.
____
