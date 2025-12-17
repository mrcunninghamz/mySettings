# AutoComplete
autoload -Uz compinit
compinit

# Path configuration
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Environmental Variables
export MONEYBAE_DATABASE_URL="postgres://mrcunninghamz@localhost/money_bae"

# Language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Aliases
# alias zshconfig="$EDITOR ~/.zshrc"

# Terminal Workspace: https://zellij.dev/documentation/integration.html
eval "$(zellij setup --generate-auto-start zsh)"

# Prompt: using Starship https://starship.rs/
eval "$(starship init zsh)"

# Completions: https://carapace.sh/ 
# ${UserConfigDir}/zsh/.zshrc
export CARAPACE_BRIDGES='zsh,bash'# optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)
