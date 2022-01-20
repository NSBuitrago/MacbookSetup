# command line tools
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# pyenv
brew install pyenv
# python3 (update version if necessary)
pyenv install 3.9.0
pyenv global 3.9.0
pyenv version
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# Go
brew install go

# git and github cli
git config --gobal user.name nsbuitrago
git config --global user.email mail@nsbuitrago.com
brew install gh
gh auth login

# Pandoc
brew install pandoc

# apps
brew install --cask r
brew install --cask rstudio
brew install --cask iterm2
brew install --cask 1password
brew install --cask obsidian
brew install --cask visual-studio-code
brew install --cask raycast
brew install --cask notion
brew install --cask zoom
brew install --cask slack
brew install --cask nordvpn
brew install --cask blender


