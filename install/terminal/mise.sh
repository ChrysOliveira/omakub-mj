# Install Mise (programming language manager)
echo "Attempting to install Mise..."

# Check if curl is installed, if not, install it
if ! command -v curl &> /dev/null; then
  echo "curl not found, installing it..."
  sudo pacman -S --needed curl --noconfirm
fi

# Download and install Mise from the official script
if curl -fsSL https://mise.run | sh; then
  echo "Mise installed successfully!"
else
  echo "Failed to install Mise. Please check your internet connection or the script URL."
  exit 1
fi
