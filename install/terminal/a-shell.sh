# Configure the bash shell using Omakub defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakub/configs/bashrc ~/.bashrc

# Manjaro defaults to ZSH
[ -f "~/.zshrc" ] && cp ~/.zshrc ~/.zshrc.bak
cp ~/.local/share/omakub/configs/zshrc ~/.zshrc

# Load the PATH for use later in the installers
# source ~/.local/share/omakub/defaults/bash/shell
source ~/.local/share/omakub/defaults/zsh/rc

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp ~/.local/share/omakub/configs/inputrc ~/.inputrc
