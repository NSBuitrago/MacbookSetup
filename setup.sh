# command line tools
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# python3
brew install pyenv
# update python version if necessary
pyenv install 3.9.0
pyenv global 3.9.0
pyenv version
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# git and github cli
git config --gobal user.name nsbuitrago
git config --global user.email nsbuitrago@icloud.com
brew install gh
gh auth login

# intsall vim plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
