# ========================
# Powerlevel10k Instant Prompt
# ========================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ========================
# Oh My Zsh Configuration
# ========================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ========================
# PATH Configuration
# ========================
export PATH="$HOME/.local/bin:$PATH"

OS="$(uname -s)"

if [[ "$OS" == "Darwin" ]]; then
  # macOS Configuration
  export PATH="/opt/homebrew/bin:$PATH"
  export PATH="$HOME/Library/Python/3.9/bin:$PATH"
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
elif [[ "$OS" == "Linux" ]]; then
  # Linux Configuration
  export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

# ========================
# SDKMAN Configuration
# ========================
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# ========================
# Powerlevel10k Configuration
# ========================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
