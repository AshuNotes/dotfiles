# My Dev Environment Files 🚀

**IMPORTANT:** These are primarily meant for inspiration. I wouldn't just blindly use them. Proceed at your own risk!

## Neovim Setup

**Important**: This is my latest config with lazy.nvim.

*dependencies for neovim*

```bash
sudo apt install unzip tree tmux snap curl ripgrep htop gzip fzf fd-find build-essential
```

Clone the Neovim repository:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo mv /opt/nvim-linux64 /opt/nvim
rm -rf ~/nvim-linux64.tar.gz
```

Add the following line in ~/.zshrc or ~/.bashrc:

```bash
export PATH="$PATH:/opt/nvim/bin"
```

## Cloning repository

Clone the AshuNotes/dotfiles repository:

```bash
cd ~
git clone https://github.com/AshuNotes/dotfiles.git
cp ~/dotfiles/.config/nvim ~/.config/
```

## ZSH Setup

Install zsh

```bash
sudo apt install zsh
```

Set default shell to zsh

```bash
sudo chsh -s $(which zsh)
```

**Install the dependencies [zsh-autosuggestions zsh-syntax-highlighting]** only by git cloning 

Copy the .zshrc to the ~/

```bash
cp ~/dotfiles/zsh ~/.config/
rm ~/.zshrc
ln -s ~/.config/zsh/.zshrc ~/.zshrc
```

Source the .zshrc
```bash
source ~/.zshrc
```

*change the filename from ~/.zsh-history to ~/.zhistory*

## BASH Setup

```bash
sudo chsh -s $(which bash)
```

```bash
rm ~/.bashrc
ln -s ~/.config/bash/.bashrc ~/.bashrc
```

##  Tmux Setup

```bash
cp ~/dotfiles/tmux ~/.config/
rm ~/.tmux.conf
ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf
```