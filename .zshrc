export EDITOR=nvim 
bindkey -v

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(direnv hook zsh)"

# aliases
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=/Users/nsbuitrago/Developer/dotfiles/ --work-tree=/Users/nsbuitrago'
alias activate='source .venv/bin/activate'
alias ff="fastfetch"
alias ls="eza --icons"
alias f="fzf"
alias vf='nvim "$(fzf)"'
alias ll="ls -l"
alias lg="lazygit"
alias gs="git status"
alias gc="git commit"
alias gp="git push"

cf() {
  local dir
  dir=$(find . -type d 2> /dev/null | fzf) && cd "$dir"
}

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/opt/homebrew/opt/micromamba/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/nsbuitrago/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
#

# bun completions
[ -s "/Users/nsbuitrago/.bun/_bun" ] && source "/Users/nsbuitrago/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# python
export LD_LIBRARY_PATH="/Users/nsbuitrago/.pyenv/versions/3.10.0/lib/libpython3.10.dylib:$LD_LIBRARY_PATH"

export MODULAR_HOME="/Users/nsbuitrago/.modular"
export PATH="/Users/nsbuitrago/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

eval "$(gh copilot alias -- zsh)"

# java
export JAVA_HOME="/opt/homebrew/Cellar/openjdk/23/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_PATH/bin:$PATH"
