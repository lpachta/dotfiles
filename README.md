# lpachta's dotfiles

## Installation

```bash
rm -rf ~/dotfiles.bak && mv ~/dotfiles{,.bak}
```

```bash
git clone git@github.com:lpachta/dotfiles.git ~/dotfiles
```

### If you're using Arch

```bash
chmod +x ~/dotfiles/arch-install.sh
~/dotfiles/arch-install.sh
```

### If you're using anything else 

install these dependencies:

```bash
kitty ttf-jetbrains-mono-nerd zsh fzf zoxide nvim eza fastfetch
```

Then run this:

```bash
chmod +x ~/dotfiles/install.sh
~/dotfiles/install.sh
```
