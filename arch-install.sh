echo "👨‍🔧 Installing packages using pacman..."
sudo pacman -S kitty ttf-jetbrains-mono-nerd zsh fzf zoxide nvim eza fastfetch
echo ""

echo "🔗 Linking dotfiles..."
rm -rf ~/.p10k.zsh.bak && mv ~/.p10k.zsh{,.bak}
rm -rf ~/.zshrc.bak && mv ~/.zshrc{,.bak}
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
rm -rf ~/.config/zshrc.bak && mv ~/.config/zshrc{,.bak}
ln -sf $HOME/dotfiles/.config/zshrc $HOME/.config/zshrc
rm -rf ~/.config/kitty.bak && mv ~/.config/kitty{,.bak}
ln -sf $HOME/dotfiles/.config/kitty $HOME/.config/kitty
echo ""

echo "💤 Installing LazyVim..."
rm -rf ~/.config/nvim.bak && mv ~/.config/nvim{,.bak}
rm -rf ~/.local/share/nvim.bak && mv ~/.local/share/nvim{,.bak}
rm -rf ~/.local/state/nvim.bak && mv ~/.local/state/nvim{,.bak}
rm -rf ~/.cache/nvim.bak && mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
ln -sf $HOME/dotfiles/.config/nvim/lua/plugins/transparent.lua $HOME/.config/nvim/lua/plugins/transparent.lua
echo ""

echo "Setting Zsh as the default shell..."
chsh -s $(which zsh)
echo ""

echo "✅ Everything should be set and done. Now restart the puter and run nvim perhaps."
