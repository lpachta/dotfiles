echo "👨‍🔧 Installing packages using pacman..."
sudo pacman -S kitty ttf-jetbrains-mono-nerd zsh fzf zoxide nvim eza fastfetch
echo ""

echo "🔗 Linking dotfiles..."
mv ~/.zshrc{,.bak}
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
mv ~/.config/zshrc{,.bak}
ln -sf $HOME/dotfiles/.config/zshrc/ $HOME/.config/zshrc/
mv ~/.config/kitty{,.bak}
ln -sf $HOME/dotfiles/.config/kitty/ $HOME/.config/kitty/
echo ""

echo "💤 Installing LazyVim..."
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
ln -sf $HOME/dotfiles/.config/nvim/lua/plugins/transparent.lua $HOME/.config/nvim/lua/plugins/transparent.lua
echo ""

echo "✅ Everything should be set and done."
