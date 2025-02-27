yay -S --needed neovim --noconfirm

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
  # Use LazyVim
  git clone https://github.com/ChrysOliveira/nvim.git ~/.config/nvim

  # Disable update notification popup in starter config
  # removing this config that was related to LazyVim
  # sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua

  # Make everything match the terminal transparency
  cp ~/.local/share/omakub/configs/neovim/transparency.lua ~/.config/nvim/plugins/

  # Default to Tokyo Night theme
  cp ~/.local/share/omakub/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

  # Enable default extras
  # removing this config that was related to LazyVim
  # cp ~/.local/share/omakub/configs/neovim/lazyvim.json ~/.config/nvim/lazyvim.json
fi

# Replace desktop launcher with one running inside Alacritty
if [[ -d ~/.local/share/applications ]]; then
  sudo rm -rf /usr/share/applications/nvim.desktop
  source ~/.local/share/omakub/applications/Neovim.sh
fi
