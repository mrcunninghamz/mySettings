# Rust/Cargo environment
. "$HOME/.cargo/env"

# Path configuration
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Project-specific environment variables
export MONEYBAE_DATABASE_URL="postgres://mrcunninghamz@localhost/money_bae"

# Carapace completion bridges
export CARAPACE_BRIDGES='zsh,bash'
