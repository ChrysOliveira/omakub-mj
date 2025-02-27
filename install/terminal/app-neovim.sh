yay -S --needed neovim --noconfirm

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
  # Use AtroNvim
  git clone https://github.com/ChrysOliveira/nvim.git ~/.config/nvim

  # Make everything match the terminal transparency
  cp ~/.local/share/omakub/configs/neovim/transparency.lua ~/.config/nvim/lua/plugins/

  # Default to Tokyo Night theme
  cp ~/.local/share/omakub/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
fi

# Replace desktop launcher with one running inside Alacritty
if [[ -d ~/.local/share/applications ]]; then
  sudo rm -rf /usr/share/applications/nvim.desktop
  source ~/.local/share/omakub/applications/Neovim.sh
fi
