xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install neovim
brew install ripgrep
brew install fzf
brew install fd
brew install node
brew install uv
brew install zoxide
brew install eza
brew install lazygit
brew install pyenv
brew install rustup-init
brew install go
brew install gh
brew install tailscale
brew install pymol
brew install fastfetch
brew install htop
brew install stow

pyenv install 3.10.0
pyenv global 3.10.0
pyenv version

git config --gobal user.name nsbuitrago
git config --global user.email mail@nsbuitrago.com
gh auth login
gh extension install github/gh-copilot

brew install --cask arc
brew install --cask wezterm
brew install --cask raycast
brew install --cask obsidian
brew install --cask microsoft-word
brew install --cask microsoft-excel
brew install --cask 1password
brew install --cask affinity-designer
brew install --cask affinity-photo
brew install --cask screen-studio
brew install --cask zoom
brew install --cask slack
brew install --cask blender
brew install --cask nikitabobko/tap/aerospace
brew install --cask utm

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

defaults write com.apple.finder showPathBar -bool true
defaults write com.apple.finder showStatusBar -bool true

