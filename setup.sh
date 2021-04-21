# command line tools
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# pyenv
brew install pyenv
# python3 (update version if necessary)
pyenv install 3.9.0
pyenv global 3.9.0
pyenv version
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# git and github cli
git config --gobal user.name nsbuitrago
git config --global user.email mail@nsbuitrago.com
brew install gh
gh auth login

# apps
brew install --cask iterm2
brew install --cask 1password
brew install --cask firefox
brew install --cask obsidian
brew install --cask visual-studio-code
brew install --cask raycast
brew install --cask notion
brew install --cask mendeley
brew install --cask zoom
brew install --cask nordvpn

