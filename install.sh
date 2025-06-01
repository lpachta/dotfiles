echo "👨‍🔧 Installing packages using pacman..."
sudo pacman -S kitty ttf-jetbrains-mono-nerd zsh fzf zoxide nvim eza fastfetch
echo ""

echo "🔗 Linking dotfiles..."
mv -T ~/.zshrc{,.bak}
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
mv -T ~/.config/zshrc{,.bak}
ln -sf $HOME/dotfiles/.config/zshrc $HOME/.config/zshrc
mv -T ~/.config/kitty{,.bak}
ln -sf $HOME/dotfiles/.config/kitty $HOME/.config/kitty
echo ""

echo "💤 Installing LazyVim..."
mv -T ~/.config/nvim{,.bak}
mv -T ~/.local/share/nvim{,.bak}
mv -T ~/.local/state/nvim{,.bak}
mv -T ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
ln -sf $HOME/dotfiles/.config/nvim/lua/plugins/transparent.lua $HOME/.config/nvim/lua/plugins/transparent.lua
echo ""

echo "✅ Everything should be set and done."
